import 'dart:async';

import 'package:weight_control/src/common/logger/logger.dart';
import 'package:weight_control/src/features/initialization/logic/app_runner.dart';

export 'src/common/application/application.dart';
export 'src/common/application/material_context.dart';
export 'src/features/initialization/data/dependencies.dart';

void main() {
  logger.runLogging(
    () {
      runZonedGuarded(
        () async => AppRunner().initializeAndRun(),
        logger.logZoneError,
      );
    },
    const LogOptions(),
  );
}
