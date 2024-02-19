part of 'dashboard_screen.dart';

class _DashboardScreenWidget$Cupertino extends StatelessWidget {
  const _DashboardScreenWidget$Cupertino();

  @override
  Widget build(final BuildContext context) {
    final measuresState = MeasuresScope.stateOf(context, listen: true);

    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text(context.localizations.yourMeasurements),
          ),
          const SliverToBoxAdapter(child: MeasuresChart()),
          const SliverToBoxAdapter(
            child: Divider(
              indent: 16,
              endIndent: 16,
            ),
          ),
          SliverList.builder(
            itemCount: measuresState.measures.length,
            itemBuilder: (final context, final index) => _MeasureTile$Cupertino(
              measure: measuresState.measures[index],
              prevMeasure: index < measuresState.measures.length - 1
                  ? measuresState.measures[index + 1]
                  : null,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: kBottomNavigationBarHeight),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.of(context).viewPadding.bottom),
          ),
        ],
      ),
    );
  }
}

class _MeasureTile$Cupertino extends StatelessWidget {
  const _MeasureTile$Cupertino({
    required this.measure,
    required this.prevMeasure,
  });

  final Measure measure;
  final Measure? prevMeasure;

  @override
  Widget build(final BuildContext context) {
    final difference = measure.weight.difference(prevMeasure?.weight);

    String? differenceWeight;
    if (prevMeasure != null) {
      final difference =
          measure.weight - (prevMeasure?.weight ?? const Weight());
      differenceWeight = context.localizations.numberKg(difference.kilograms);
    }

    return CupertinoListTile.notched(
      title: Text(context.localizations.numberKg(measure.weight.kilograms)),
      subtitle: Text(
        [
          DateFormat.yMEd().format(measure.time),
          measure.comment,
        ].whereNotNull().join(' '),
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (differenceWeight != null)
            Text(
              differenceWeight,
              style: TextStyle(
                color: switch (difference) {
                  WeightDifferenceMode.less => CupertinoColors.activeGreen,
                  WeightDifferenceMode.greaterthan => CupertinoColors.systemRed,
                  WeightDifferenceMode.equal => CupertinoColors.inactiveGray,
                  WeightDifferenceMode.notCalculated =>
                    CupertinoColors.inactiveGray,
                },
              ),
            ),
        ],
      ),
    );
  }
}
