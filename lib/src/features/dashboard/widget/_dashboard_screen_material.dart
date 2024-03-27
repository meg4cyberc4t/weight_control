part of 'dashboard_screen.dart';

class _DashboardScreenWidget$Material extends StatelessWidget {
  const _DashboardScreenWidget$Material();

  @override
  Widget build(final BuildContext context) {
    final measuresState = MeasuresScope.stateOf(context, listen: true);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(title: Text(context.localizations.yourMeasurements)),
          const SliverToBoxAdapter(child: MeasuresChart()),
          const SliverToBoxAdapter(
            child: Divider(
              indent: 16,
              endIndent: 16,
            ),
          ),
          SliverList.builder(
            itemCount: measuresState.measures.length,
            itemBuilder: (final context, final index) => _MeasureTile$Material(
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

class _MeasureTile$Material extends StatelessWidget {
  const _MeasureTile$Material({
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
      final formattedKilograms = difference.inKilograms;
      final formattedGrams = difference.inGrams % 1000 / 100;
      differenceWeight = '$formattedKilograms.${formattedGrams.toInt()}';
    }
    return ListTile(
      title:
          Text(context.localizations.kilogramsNumber(measure.weight.kilograms)),
      subtitle: Text(
        [
          DateFormat.yMEd().format(measure.time),
          measure.comment,
        ].whereNotNull().join(' '),
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            switch (difference) {
              WeightDifferenceMode.less => Icons.trending_down_rounded,
              WeightDifferenceMode.greaterthan => Icons.trending_up_rounded,
              WeightDifferenceMode.equal => Icons.trending_flat_rounded,
              WeightDifferenceMode.notCalculated => Icons.trending_flat_rounded,
            },
            color: switch (difference) {
              WeightDifferenceMode.less => Colors.green,
              WeightDifferenceMode.greaterthan => Colors.red,
              WeightDifferenceMode.equal => Colors.blueGrey,
              WeightDifferenceMode.notCalculated => Colors.grey,
            },
          ),
          if (differenceWeight != null)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                differenceWeight,
                style: TextStyle(
                  color: switch (difference) {
                    WeightDifferenceMode.less => Colors.green,
                    WeightDifferenceMode.greaterthan => Colors.red,
                    WeightDifferenceMode.equal => Colors.blueGrey,
                    WeightDifferenceMode.notCalculated => Colors.grey,
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}
