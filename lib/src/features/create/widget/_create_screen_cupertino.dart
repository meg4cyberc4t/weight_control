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

  @override
  void initState() {
    final lastMeasure = widget.state.lastMeasure;
    final initialGrams =
        lastMeasure != null ? (lastMeasure.weightInGrams % 100) ~/ 10 : 0;
    final initialKilograms =
        lastMeasure != null ? lastMeasure.weightInGrams ~/ 100 : 0;
    _gramsController = FixedExtentScrollController(initialItem: initialGrams);
    _kilogramsController =
        FixedExtentScrollController(initialItem: initialKilograms);
    super.initState();
  }

  @override
  void dispose() {
    _kilogramsController.dispose();
    _gramsController.dispose();
    super.dispose();
  }

  void _create() {
    final grams = (_gramsController.selectedItem % 10) * 10 +
        (_kilogramsController.selectedItem * 100);
    widget.controller.create(
      weightInGrams: grams,
      comment: null,
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
          CupertinoListTile.notched(
            title: Text(context.localizations.weight),
            subtitle: const Text('Меньше предидущего на 0.3 кг'), // TODO:
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
            subtitle: Text(context.localizations.addAComment),
            onTap: () {}, // TODO:!
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
