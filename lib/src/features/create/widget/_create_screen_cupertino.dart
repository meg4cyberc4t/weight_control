part of 'create_screen.dart';

class _CreateScreenWidget$Cupertino extends StatefulWidget {
  final Measure? lastMeasure;
  final void Function({
    required Weight weight,
    required String comment,
  }) onAction;
  final bool isEditing;

  const _CreateScreenWidget$Cupertino({
    required this.isEditing,
    required this.lastMeasure,
    required this.onAction,
  });

  @override
  State<StatefulWidget> createState() => _CreateScreenWidgetState$Cupertino();
}

class _CreateScreenWidgetState$Cupertino
    extends State<_CreateScreenWidget$Cupertino> {
  late final FixedExtentScrollController _gramsController;
  late final FixedExtentScrollController _kilogramsController;
  late final TextEditingController _commentTextController =
      TextEditingController(text: widget.lastMeasure?.comment);

  Weight _weight = const Weight();

  @override
  void initState() {
    final lastMeasure = widget.lastMeasure;
    _weight = Weight(grams: lastMeasure?.weight.inGrams ?? 0);
    _gramsController = FixedExtentScrollController(
      initialItem: (_weight.inGrams % 1000) ~/ 100,
    );
    _kilogramsController =
        FixedExtentScrollController(initialItem: _weight.inKilograms);
    super.initState();
  }

  void _onGramsUpdate(final int grams) {
    setState(() {
      _weight = Weight(
        kilograms: _weight.inKilograms,
        grams: grams * 100,
      );
    });
  }

  void _onKilogramsUpdate(final int kilograms) {
    setState(() {
      _weight = Weight(
        grams: _weight.inGrams % 1000,
        kilograms: kilograms,
      );
    });
  }

  @override
  void dispose() {
    _kilogramsController.dispose();
    _gramsController.dispose();
    _commentTextController.dispose();
    super.dispose();
  }

  void _create() {
    final grams = (_gramsController.selectedItem % 10) * 100 +
        (_kilogramsController.selectedItem * 1000);
    widget.onAction(
      weight: Weight(grams: grams),
      comment: _commentTextController.text,
    );
  }

  @override
  Widget build(final BuildContext context) {
    final theme = CupertinoTheme.of(context);

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        middle: Text(context.localizations.specifyTheWeight),
      ),
      child: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: theme.primaryContrastingColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 8),
              WeightDifference(
                lastWeight: widget.lastMeasure?.weight,
                weight: _weight,
                builder: (final _, final mode, final formattedString) =>
                    _WeightDifference$Cupertino(
                  mode: mode,
                  formattedString: formattedString,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 24),
                  SizedBox(
                    width: 80,
                    height: 128,
                    child: CupertinoPicker(
                      magnification: 1.1,
                      useMagnifier: true,
                      itemExtent: 50,
                      scrollController: _kilogramsController,
                      onSelectedItemChanged: (final selectedItem) async {
                        _onKilogramsUpdate(selectedItem);
                        await HapticFeedback.selectionClick();
                      },
                      children: List.generate(
                        200,
                        (final index) => SizedBox(
                          height: 50,
                          child: Center(child: Text('$index')),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 128,
                    child: CupertinoPicker(
                      magnification: 1.1,
                      itemExtent: 50,
                      scrollController: _gramsController,
                      onSelectedItemChanged: (final selectedItem) async {
                        _onGramsUpdate(selectedItem);
                        await HapticFeedback.selectionClick();
                      },
                      looping: true,
                      useMagnifier: true,
                      children: List.generate(
                        10,
                        (final index) => SizedBox(
                          height: 50,
                          child: Center(child: Text('.$index')),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'кг',
                    style: CupertinoTheme.of(context)
                        .textTheme
                        .dateTimePickerTextStyle,
                  ),
                ],
              ),
              CupertinoListTile.notched(
                title: Text(context.localizations.comment),
                subtitle: CupertinoTextField(
                  controller: _commentTextController,
                  placeholder: context.localizations.addAComment,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: CupertinoButton.filled(
                  onPressed: _create,
                  child: Text(
                    widget.isEditing
                        ? context.localizations.edit
                        : context.localizations.record,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WeightDifference$Cupertino extends StatelessWidget {
  const _WeightDifference$Cupertino({
    required this.mode,
    required this.formattedString,
  });

  final WeightDifferenceMode mode;
  final String formattedString;

  @override
  Widget build(final BuildContext context) => CupertinoListTile.notched(
        title: Text(context.localizations.weight),
        subtitle: Text(
          switch (mode) {
            WeightDifferenceMode.less =>
              context.localizations.lessThanPrevious(formattedString),
            WeightDifferenceMode.greaterthan =>
              context.localizations.greaterThanPrevious(formattedString),
            WeightDifferenceMode.equal =>
              context.localizations.equalThanPrevious,
            WeightDifferenceMode.notCalculated =>
              context.localizations.notCalculated,
          },
          style: TextStyle(
            color: switch (mode) {
              WeightDifferenceMode.less => CupertinoColors.activeGreen,
              WeightDifferenceMode.greaterthan => CupertinoColors.systemRed,
              WeightDifferenceMode.equal => CupertinoColors.inactiveGray,
              WeightDifferenceMode.notCalculated =>
                CupertinoColors.inactiveGray,
            },
          ),
        ),
        additionalInfo: Icon(
          switch (mode) {
            WeightDifferenceMode.less => CupertinoIcons.lessthan_square,
            WeightDifferenceMode.greaterthan =>
              CupertinoIcons.greaterthan_square,
            WeightDifferenceMode.equal => CupertinoIcons.equal_square,
            WeightDifferenceMode.notCalculated => CupertinoIcons.square,
          },
          color: switch (mode) {
            WeightDifferenceMode.less => CupertinoColors.activeGreen,
            WeightDifferenceMode.greaterthan => CupertinoColors.systemRed,
            WeightDifferenceMode.equal => CupertinoColors.inactiveGray,
            WeightDifferenceMode.notCalculated => CupertinoColors.inactiveGray,
          },
        ),
      );
}
