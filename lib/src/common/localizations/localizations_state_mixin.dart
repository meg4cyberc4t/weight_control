import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:weight_control/src/common/config/config.dart';
import 'package:weight_control/src/common/localizations/generated/l10n.dart';

/// The mixing LocalizationsStateMixin provides the functionality for
/// managing the localizations.
mixin LocalizationsStateMixin<T extends StatefulWidget> on State<T> {
  /// The main localization delegate.
  late final AppLocalizationDelegate localizationDelegate;

  @override
  void initState() {
    localizationDelegate = const AppLocalizationDelegate();
    super.initState();
  }

  /// Title for the application.
  String onGenerateTitle(final BuildContext context) {
    switch (Config.environmentFlavor) {
      case EnvironmentFlavor.production:
        return context.localizations.title;
      case EnvironmentFlavor.development:
        return context.localizations.titleDevelopment;
      case EnvironmentFlavor.stage:
        return context.localizations.titleStage;
    }
  }

  /// List of LocalizationsDelegate
  late final Iterable<LocalizationsDelegate<dynamic>> localizationsDelegate = [
    localizationDelegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];
}

/// Provider of localization for BuildContext
extension LocalizationsBuildExtension on BuildContext {
  /// The main localization delegate.
  GeneratedLocalization get localizations => GeneratedLocalization.of(this);
}
