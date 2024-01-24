import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:weight_control/src/common/database/converters/logs_level_converter.dart';
import 'package:weight_control/src/common/database/tables/logs_table.dart';
import 'package:weight_control/src/common/logger/logger.dart';

part 'database.g.dart';

/// {@template AppDatabase}
/// The SQL database configuration
/// {@endtemplate}
@DriftDatabase(tables: [LogsTable])
class AppDatabase extends _$AppDatabase {
  /// {@macro app_database}
  AppDatabase([final QueryExecutor? executor])
      : super(executor ?? _$createQueryExecutor());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade:
            (final migrator, final fromVersion, final toVersion) async {},
      );
}

/// {@macro db_executor}
QueryExecutor _$createQueryExecutor() {
  final db = LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
  return db;
}
