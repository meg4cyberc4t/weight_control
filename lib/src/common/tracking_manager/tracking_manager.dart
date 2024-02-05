import 'dart:async';

import 'package:drift/drift.dart';
import 'package:meta/meta.dart';
import 'package:weight_control/src/common/database/database.dart';
import 'package:weight_control/src/common/logger/logger.dart';

/// {@template TrackingManager}
/// A class which is responsible for enabling error tracking.
/// {@endtemplate}
abstract base class TrackingManager {
  final Logger _logger;
  StreamSubscription<LogMessage>? _subscription;

  /// {@macro TrackingManager}
  TrackingManager(this._logger);

  /// Enables error tracking.
  ///
  /// This method should be called when the user has opted in to error tracking.
  Future<void> enableReporting() async {
    _subscription ??=
        _logger.logs.where(_logsCondition).listen((final log) async {
      await _onReport(log);
    });
  }

  /// Disables error tracking.
  ///
  /// This method should be called when the user has opted out of error tracking
  Future<void> disableReporting() async {
    await _subscription?.cancel();
    _subscription = null;
  }

  /// Logs condition for the collect
  @protected
  bool _logsCondition(final LogMessage event);

  /// Handles the log message.
  ///
  /// This method is called when a log message is received.
  Future<void> _onReport(final LogMessage log);
}

/// {@template DatabaseTrackingManager}
/// Implementation of [TrackingManager] for storing logs
/// while using the application. When restarting the application
/// or [TrackingManager], the logs will be cleared
/// {@endtemplate}
final class DatabaseTrackingManager extends TrackingManager {
  final AppDatabase _database;

  /// {@macro DatabaseTrackingManager}
  DatabaseTrackingManager(
    this._database,
    super._logger,
  );

  @override
  Future<void> enableReporting() async {
    await _database.logsTable.deleteAll();
    return super.enableReporting();
  }

  @override
  @protected
  bool _logsCondition(final LogMessage event) => true;

  @override
  Future<void> _onReport(final LogMessage log) async {
    await _database.into(_database.logsTable).insert(
          LogsTableCompanion.insert(
            message: log.message,
            time: Value.ofNullable(log.time),
            level: Value(log.logLevel),
            stackTrace: Value(log.stackTrace),
          ),
        );
  }
}
