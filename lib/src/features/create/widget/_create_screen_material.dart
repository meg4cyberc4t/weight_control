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
              child: ListTile(
                title: Text(context.localizations.weight),
                subtitle: const Text('Меньше предидущего на 0.3 кг'), // TODO:
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
                subtitle: Text(context.localizations.addAComment),
                onTap: () {
                  // TODO:
                },
              ),
            ),
          ],
        ),
      );
}
