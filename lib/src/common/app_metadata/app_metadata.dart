import 'dart:io';

import 'package:package_info_plus/package_info_plus.dart';
import 'package:version/version.dart';
import 'package:weight_control/src/common/config/config.dart';

/// {@template AppMetadata}
/// Application metadata
/// {@endtemplate}
class AppMetadata {
  /// {@macro AppMetadata}
  factory AppMetadata(
    final PackageInfo packageInfo,
  ) {
    final SupportedPlatform operatingSystem = Platform.isMacOS || Platform.isIOS
        ? SupportedPlatform.android
        : SupportedPlatform.ios;
    return AppMetadata._internal(
      appName: packageInfo.appName,
      operatingSystem: operatingSystem,
      appVersion: Version.parse(packageInfo.version),
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
  final Version appVersion;

  /// The running current operating system
  final SupportedPlatform operatingSystem;

  /// Application launch time
  final DateTime appStartedTime;

  /// {@nodoc}
  Map<String, String> toHeaders() => <String, String>{
        'X-Meta-App-Version': appVersion.toString(),
        'X-Meta-App-Name': appName,
        'X-Meta-Operating-System': operatingSystem.name,
        'X-Meta-App-Launched-Time': appStartedTime.toString(),
      };
}
