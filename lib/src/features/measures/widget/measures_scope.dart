import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weight_control/src/features/initialization/data/dependencies.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';
import 'package:weight_control/src/features/measures/logic/measures_bloc.dart';

abstract interface class MeasureController {
  void createOrEditTodays({
    required final Weight weight,
    required final String comment,
  });

  void delete({
    required final int id,
  });

  void deleteAll();
}

class MeasuresScope extends StatefulWidget {
  final Widget child;

  const MeasuresScope({
    required this.child,
    super.key,
  });

  static MeasuresState stateOf(
    final BuildContext context, {
    final bool listen = false,
  }) =>
      (listen
              ? context.dependOnInheritedWidgetOfExactType<
                  _MeasuresInheritedWidget>()
              : context
                  .getInheritedWidgetOfExactType<_MeasuresInheritedWidget>())
          ?.state ??
      _notFoundInheritedWidget();

  static MeasureController controllerOf(
    final BuildContext context, {
    final bool listen = false,
  }) =>
      (listen
              ? context.dependOnInheritedWidgetOfExactType<
                  _MeasuresInheritedWidget>()
              : context
                  .getInheritedWidgetOfExactType<_MeasuresInheritedWidget>())
          ?.controller ??
      _notFoundInheritedWidget();

  static Never _notFoundInheritedWidget() => throw ArgumentError(
        'Out of scope, not found inherited widget '
            'a _MeasuresInheritedWidget of the exact type',
        'out_of_scope',
      );

  @override
  State<MeasuresScope> createState() => _MeasuresScopeState();
}

class _MeasuresScopeState extends State<MeasuresScope>
    implements MeasureController {
  late final MeasuresBloc _measuresBloc;

  @override
  void initState() {
    _measuresBloc = MeasuresBloc(
      Dependencies.of(context).measuresRepository,
    )..add(const MeasuresEvent.started());
    super.initState();
  }

  @override
  void dispose() {
    _measuresBloc.close();
    super.dispose();
  }

  @override
  void createOrEditTodays({
    required final Weight weight,
    required final String comment,
  }) =>
      _measuresBloc.add(
        MeasuresEvent.createOrEditTodays(
          weight: weight,
          comment: comment,
        ),
      );

  @override
  void deleteAll() => _measuresBloc.add(const MeasuresEvent.deleteAll());

  @override
  void delete({required final int id}) =>
      _measuresBloc.add(MeasuresEvent.delete(id: id));

  @override
  Widget build(final BuildContext context) =>
      BlocBuilder<MeasuresBloc, MeasuresState>(
        bloc: _measuresBloc,
        builder: (final context, final state) => _MeasuresInheritedWidget(
          state: state,
          controller: this,
          child: widget.child,
        ),
      );
}

class _MeasuresInheritedWidget extends InheritedWidget {
  final MeasuresState state;
  final MeasureController controller;

  const _MeasuresInheritedWidget({
    required this.state,
    required this.controller,
    required super.child,
  });

  @override
  bool updateShouldNotify(covariant final _MeasuresInheritedWidget oldWidget) =>
      state != oldWidget.state || controller != oldWidget.controller;
}
