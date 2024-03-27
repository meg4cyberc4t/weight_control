import 'dart:async';

import 'package:weight_control/src/common/logger/logger.dart';
import 'package:weight_control/src/features/initialization/logic/app_runner.dart';

void main() {
  logger.runLogging(
    () => runZonedGuarded(
      () async => AppRunner().initializeAndRun(),
      logger.logZoneError,
    ),
    const LogOptions(),
  );
}
