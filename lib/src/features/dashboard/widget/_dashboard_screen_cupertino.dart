part of 'dashboard_screen.dart';

class _DashboardScreenWidget$Cupertino extends StatefulWidget {
  const _DashboardScreenWidget$Cupertino();

  @override
  State<_DashboardScreenWidget$Cupertino> createState() =>
      _DashboardScreenWidget$CupertinoState();
}

class _DashboardScreenWidget$CupertinoState
    extends State<_DashboardScreenWidget$Cupertino> {
  @override
  Widget build(final BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                MeasuresScope.stateOf(context, listen: true).toString(),
              ),
            ],
          ),
        ),
      );
}
