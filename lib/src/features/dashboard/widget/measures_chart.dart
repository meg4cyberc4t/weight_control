import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:weight_control/src/common/localizations/localizations_state_mixin.dart';
import 'package:weight_control/src/features/measures/data/models/measure.dart';
import 'package:weight_control/src/features/measures/widget/measures_scope.dart';

class MeasuresChart extends StatefulWidget {
  const MeasuresChart({super.key});

  @override
  State<MeasuresChart> createState() => _MeasuresChartState();
}

class _MeasuresChartState extends State<MeasuresChart> {
  late final TooltipBehavior _tooltipBehavior;
  late final ZoomPanBehavior _zoomPanBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    _zoomPanBehavior = ZoomPanBehavior(
      enableDoubleTapZooming: true,
      enableMouseWheelZooming: true,
      enablePinching: true,
      zoomMode: ZoomMode.x,
      enablePanning: true,
    );
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    final measures = MeasuresScope.stateOf(context, listen: true).measures;
    return SfCartesianChart(
      zoomPanBehavior: _zoomPanBehavior,
      tooltipBehavior: _tooltipBehavior,
      series: <CartesianSeries<Object?, Object?>>[
        LineSeries<Measure, DateTime>(
          dataLabelMapper: (final datum, final index) =>
              context.localizations.kilogramsNumber(datum.weight.kilograms),
          dataSource: measures,
          xValueMapper: (final measure, final _) => measure.time,
          yValueMapper: (final measure, final _) => measure.weight.inGrams,
          dataLabelSettings: const DataLabelSettings(
            isVisible: true,
          ),
        ),
      ],
      primaryXAxis: const DateTimeAxis(
        autoScrollingDeltaType: DateTimeIntervalType.days,
      ),
      primaryYAxis: const NumericAxis(
        isVisible: false,
      ),
    );
  }
}
