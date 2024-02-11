import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:weight_control/src/common/config/config.dart';
import 'package:weight_control/src/common/localizations/localizations_state_mixin.dart';
import 'package:weight_control/src/features/initialization/data/dependencies.dart';

part '_settings_screen_cupertino.dart';
part '_settings_screen_material.dart';

/// {@template SettingsScreenController}
/// The [SettingsScreenController] interface provides methods
/// for managing settings in application.
/// {@endtemplate}
abstract interface class SettingsScreenController {
  /// The current version of the application
  abstract final String version;

  Future<void> deleteAllData(final BuildContext context);

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
/// The settings screen in the app. Provides [_SettingsScreenWidget$Cupertino]
/// and [_SettingsScreenWidget$Material] implementations depending on the
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
      Clipboard.setData(ClipboardData(text: _version));

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
  Future<void> deleteAllData(final BuildContext context) async {
    final measuresRepository = Dependencies.of(context).measuresRepository;
    final showDialogFuture = switch (Config.platform) {
      SupportedPlatform.android => _showDeleteAllMaterialDialog(context),
      SupportedPlatform.ios => _showDeleteAllCupertinoDialog(context),
    };
    if (await showDialogFuture ?? false) {
      await measuresRepository.deleteAll();
    }
  }

  Future<bool?> _showDeleteAllCupertinoDialog(
    final BuildContext context,
  ) async =>
      showCupertinoModalPopup<bool>(
        context: context,
        builder: (final context) => CupertinoActionSheet(
          title: Text(context.localizations.deleteAll),
          message: Text(context.localizations.deleteAllContent),
          actions: [
            CupertinoActionSheetAction(
              onPressed: () => Navigator.of(context).pop(true),
              isDestructiveAction: true,
              child: Text(context.localizations.delete),
            ),
            CupertinoActionSheetAction(
              onPressed: Navigator.of(context).pop,
              isDefaultAction: true,
              child: Text(context.localizations.cancel),
            ),
          ],
        ),
      );

  Future<bool?> _showDeleteAllMaterialDialog(
    final BuildContext context,
  ) async {
    final theme = Theme.of(context);
    return showDialog<bool>(
      context: context,
      builder: (final context) => AlertDialog(
        title: Text(context.localizations.deleteAll),
        content: Text(context.localizations.deleteAllContent),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(
              context.localizations.delete,
              style: TextStyle(color: theme.colorScheme.error),
            ),
          ),
          TextButton(
            onPressed: Navigator.of(context).pop,
            child: Text(context.localizations.cancel),
          ),
        ],
      ),
    );
  }

  @override
  String get version => _version;
  late final String _version;

  @override
  Widget build(final BuildContext context) => switch (Config.platform) {
        SupportedPlatform.android =>
          _SettingsScreenWidget$Material(controller: this),
        SupportedPlatform.ios =>
          _SettingsScreenWidget$Cupertino(controller: this),
      };
}
