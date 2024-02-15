part of 'create_screen.dart';

class _CreateScreenWidget$Cupertino extends StatelessWidget {
  final CreateScreenController controller;

  const _CreateScreenWidget$Cupertino({required this.controller});

  @override
  Widget build(final BuildContext context) => CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        navigationBar: CupertinoNavigationBar(
          middle: Text(context.localizations.specifyTheWeight),
        ),
        child: Center(
          child: switch (controller.state) {
            final CreateScreenState$NotAvailable state =>
              _StopToCreateWidget$Cupertino(
                state: state,
                switchPageToDashboard: controller.switchPageToDashboard,
              ),
            final CreateScreenState$Available state =>
              _CreateContentWidget$Cupertino(
                state: state,
                controller: controller,
              ),
          },
        ),
      );
}

class _StopToCreateWidget$Cupertino extends StatelessWidget {
  final CreateScreenState$NotAvailable state;
  final VoidCallback switchPageToDashboard;

  const _StopToCreateWidget$Cupertino({
    required this.state,
    required this.switchPageToDashboard,
  });

  @override
  Widget build(final BuildContext context) {
    final theme = CupertinoTheme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.primaryContrastingColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.localizations.notAvailableCreateMeasure,
              style: theme.textTheme.navTitleTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              context.localizations.notAvailableCreateMeasureDescription,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            CupertinoButton.filled(
              onPressed: switchPageToDashboard,
              child: Text(context.localizations.goToDashboard),
            ),
          ],
        ),
      ),
    );
  }
}

class _CreateContentWidget$Cupertino extends StatefulWidget {
  final CreateScreenState$Available state;
  final CreateScreenController controller;

  const _CreateContentWidget$Cupertino({
    required this.state,
    required this.controller,
  });

  @override
  State<_CreateContentWidget$Cupertino> createState() =>
      __CreateContentWidget$CupertinoState();
}

class __CreateContentWidget$CupertinoState
    extends State<_CreateContentWidget$Cupertino> {
  late final FixedExtentScrollController _gramsController;
  late final FixedExtentScrollController _kilogramsController;
  final TextEditingController _commentTextController = TextEditingController();

  Weight _weight = const Weight();

  @override
  void initState() {
    final lastMeasure = widget.state.lastMeasure;
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
    widget.controller.create(
      weight: Weight(grams: grams),
      comment: _commentTextController.text,
    );
  }

  @override
  Widget build(final BuildContext context) {
    final theme = CupertinoTheme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.primaryContrastingColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 8),
          WeightDifference(
            lastWeight: widget.state.lastMeasure?.weight,
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
              child: Text(context.localizations.record),
            ),
          ),
        ],
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
