import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:version/version.dart';
import 'package:weight_control/main.dart';
import 'package:weight_control/src/common/config/config.dart';
import 'package:weight_control/src/common/localizations/localizations_state_mixin.dart';

part '_settings_screen_cupertino.dart';
part '_settings_screen_material.dart';

/// {@template SettingsScreenController}
/// The [SettingsScreenController] interface provides methods
/// for managing settings in application.
/// {@endtemplate}
abstract interface class SettingsScreenController {
  /// The current version of the application
  abstract final Version version;

  /// Copy the current version of the application to the clipboard
  Future<void> copyVersion();

  /// Transferring the user to the evaluation functionality of the application
  Future<void> rateTheApp();

  /// Open application licenses
  Future<void> openLicenses();

  /// Open the source code of the application
  Future<void> openSourceCode();

  /// Transferring the user to the functionality of sending errors to developers
  Future<void> reportABug();
}

/// {@template SettingsScreenWidget}
/// The settings screen in the app. Provides [SettingsScreenWidget$Cupertino]
/// and [SettingsScreenWidget$Material] implementations depending on the
/// running platform.
/// {@endtemplate}
class SettingsScreenWidget extends StatefulWidget {
  /// {@macro SettingsScreenWidget}
  const SettingsScreenWidget({super.key});

  @override
  State<SettingsScreenWidget> createState() => _SettingsScreenWidgetState();
}

class _SettingsScreenWidgetState extends State<SettingsScreenWidget>
    implements SettingsScreenController {
  @override
  void initState() {
    _version = Dependencies.of(context).appMetadata.appVersion;
    super.initState();
  }

  @override
  Future<void> copyVersion() async =>
      Clipboard.setData(ClipboardData(text: _version.toString()));

  @override
  Future<void> openLicenses() async {
    if (!mounted) {
      return;
    }
    showLicensePage(context: context);
  }

  @override
  Future<void> openSourceCode() => launchUrlString(Config.sourceCodeUrl);

  @override
  Future<void> rateTheApp() async => openSourceCode();

  @override
  Future<void> reportABug() async => openSourceCode();

  @override
  Version get version => _version;
  late final Version _version;

  @override
  Widget build(final BuildContext context) => switch (Config.platform) {
        SupportedPlatform.android =>
          SettingsScreenWidget$Material(controller: this),
        SupportedPlatform.ios =>
          SettingsScreenWidget$Cupertino(controller: this),
      };
}
