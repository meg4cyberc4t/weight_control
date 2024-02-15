part of 'create_screen.dart';

class _CreateScreenWidget$Material extends StatelessWidget {
  final CreateScreenController controller;

  const _CreateScreenWidget$Material({required this.controller});

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: switch (controller.state) {
          final CreateScreenState$NotAvailable state =>
            _StopToCreateWidget$Material(
              state: state,
              switchPageToDashboard: controller.switchPageToDashboard,
            ),
          final CreateScreenState$Available state =>
            _CreateContentWidget$Material(
              state: state,
              controller: controller,
            ),
        },
      );
}

class _StopToCreateWidget$Material extends StatelessWidget {
  final CreateScreenState$NotAvailable state;
  final VoidCallback switchPageToDashboard;

  const _StopToCreateWidget$Material({
    required this.state,
    required this.switchPageToDashboard,
  });

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.localizations.notAvailableCreateMeasure,
                style: theme.textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                context.localizations.notAvailableCreateMeasureDescription,
                style: theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              FilledButton(
                onPressed: switchPageToDashboard,
                child: Text(context.localizations.goToDashboard),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CreateContentWidget$Material extends StatefulWidget {
  final CreateScreenState$Available state;
  final CreateScreenController controller;

  const _CreateContentWidget$Material({
    required this.state,
    required this.controller,
  });

  @override
  State<_CreateContentWidget$Material> createState() =>
      __CreateContentWidget$MaterialState();
}

class __CreateContentWidget$MaterialState
    extends State<_CreateContentWidget$Material> {
  late final FixedExtentScrollController _gramsController;
  late final FixedExtentScrollController _kilogramsController;
  final TextEditingController _commentTextController = TextEditingController();

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

  Weight _weight = const Weight();

  @override
  void dispose() {
    _kilogramsController.dispose();
    _gramsController.dispose();
    _commentTextController.dispose();
    super.dispose();
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

  void _create() {
    widget.controller.create(
      weight: Weight(
        grams: (_gramsController.selectedItem % 10) * 100,
        kilograms: _kilogramsController.selectedItem,
      ),
      comment: _commentTextController.text,
    );
  }

  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.localizations.specifyTheWeight),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: _create,
          label: Text(context.localizations.record),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: WeightDifference(
                lastWeight: widget.state.lastMeasure?.weight,
                weight: _weight,
                builder: (final _, final mode, final formattedString) =>
                    _WeightDifference$Material(
                  mode: mode,
                  formattedString: formattedString,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
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
                    context.localizations.kg,
                    style: CupertinoTheme.of(context)
                        .textTheme
                        .dateTimePickerTextStyle,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: ListTile(
                title: Text(context.localizations.comment),
                subtitle: TextField(
                  controller: _commentTextController,
                  decoration: InputDecoration.collapsed(
                    hintText: context.localizations.addAComment,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}

class _WeightDifference$Material extends StatelessWidget {
  const _WeightDifference$Material({
    required this.mode,
    required this.formattedString,
  });

  final WeightDifferenceMode mode;
  final String formattedString;

  @override
  Widget build(final BuildContext context) => ListTile(
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
              WeightDifferenceMode.less => Colors.green,
              WeightDifferenceMode.greaterthan => Colors.red,
              WeightDifferenceMode.equal => Colors.blueGrey,
              WeightDifferenceMode.notCalculated => Colors.grey,
            },
          ),
        ),
        trailing: Icon(
          switch (mode) {
            WeightDifferenceMode.less => Icons.trending_down_rounded,
            WeightDifferenceMode.greaterthan => Icons.trending_up_rounded,
            WeightDifferenceMode.equal => Icons.trending_flat_rounded,
            WeightDifferenceMode.notCalculated => Icons.trending_flat_rounded,
          },
          color: switch (mode) {
            WeightDifferenceMode.less => Colors.green,
            WeightDifferenceMode.greaterthan => Colors.red,
            WeightDifferenceMode.equal => Colors.blueGrey,
            WeightDifferenceMode.notCalculated => Colors.grey,
          },
        ),
      );
}
