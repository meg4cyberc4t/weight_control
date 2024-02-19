import 'dart:io' as io;
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart' as ffi;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart' as pp;
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
import 'package:weight_control/src/common/database/converters/logs_level_converter.dart';
import 'package:weight_control/src/common/database/converters/stacktrace_converter.dart';
import 'package:weight_control/src/common/database/converters/weight_converter.dart';
import 'package:weight_control/src/common/database/tables/logs_table.dart';
import 'package:weight_control/src/common/database/tables/measures_table.dart';
import 'package:weight_control/src/common/logger/logger.dart';
import 'package:weight_control/src/features/measures/data/models/weight.dart';

part 'database.g.dart';

/// {@template AppDatabase}
/// The SQL database configuration
/// {@endtemplate}
@DriftDatabase(
  tables: [
    LogsTable,
    MeasuresTable,
  ],
)
class AppDatabase extends _$AppDatabase {
  /// {@macro app_database}
  AppDatabase() : super(LazyDatabase(_$createQueryExecutor));

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade:
            (final migrator, final fromVersion, final toVersion) async {},
      );
}

/// {@macro db_executor}
Future<QueryExecutor> _$createQueryExecutor() async {
  // if (kDebugMode) {
  //   try {
  //     ffi.NativeDatabase.closeExistingInstances();
  //   } catch (exception) {
  //     logger.warning("Can't close existing database instances: $exception");
  //   }
  // }

  io.File file;

  try {
    final dbFolder = await pp.getApplicationDocumentsDirectory();
    if (!dbFolder.existsSync()) {
      await dbFolder.create(recursive: true);
    }

    file = io.File(
      p.join(
        dbFolder.path.replaceAll('/app_flutter', '/databases'),
        'database.db',
      ),
    );
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }
  } on Object catch (error, stackTrace) {
    Error.throwWithStackTrace(
      'Failed to get application documents directory "$error"',
      stackTrace,
    );
  }

  return ffi.NativeDatabase.createInBackground(file);
}
