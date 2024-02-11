import 'dart:io';

import 'package:package_info_plus/package_info_plus.dart';

/// {@template AppMetadata}
/// Application metadata
/// {@endtemplate}
class AppMetadata {
  /// {@macro AppMetadata}
  factory AppMetadata(
    final PackageInfo packageInfo,
  ) {
    final String operatingSystem = Platform.operatingSystem;
    return AppMetadata._internal(
      appName: packageInfo.appName,
      operatingSystem: operatingSystem,
      appVersion: packageInfo.version,
      appStartedTime: DateTime.now(),
    );
  }

  /// {@macro AppMetadata}
  const AppMetadata._internal({
    required this.appVersion,
    required this.appName,
    required this.operatingSystem,
    required this.appStartedTime,
  });

  /// Name of the application
  final String appName;

  /// Version of the application
  final String appVersion;

  /// The running current operating system
  final String operatingSystem;

  /// Application launch time
  final DateTime appStartedTime;

  /// @nodoc
  Map<String, String> toHeaders() => <String, String>{
        'X-Meta-App-Version': appVersion,
        'X-Meta-App-Name': appName,
        'X-Meta-Operating-System': operatingSystem,
        'X-Meta-App-Launched-Time': appStartedTime.toString(),
      };
}
