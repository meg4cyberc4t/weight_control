import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weight_control/src/common/localizations/localizations_state_mixin.dart';
import 'package:weight_control/src/common/navigation/router_state_mixin.dart';
import 'package:weight_control/src/features/settings/widget/settings_scope.dart';

/// [CupertinoContext] is an entry point to the cupertino context.
///
/// This widget setting locales, themes, and routing.
class CupertinoContext extends StatefulWidget {
  /// The default constructor
  const CupertinoContext({super.key});

  @override
  State<CupertinoContext> createState() => _CupertinoContextState();
}

class _CupertinoContextState extends State<CupertinoContext>
    with RouterStateMixin, LocalizationsStateMixin {
  @override
  Widget build(final BuildContext context) => CupertinoApp.router(
        restorationScopeId: 'application',
        routerConfig: router.config,
        onGenerateTitle: onGenerateTitle,
        supportedLocales: localizationDelegate.supportedLocales,
        theme: CupertinoThemeData(
          brightness: switch (SettingsScope.themeModeOf(context)) {
            ThemeMode.system => Theme.of(context).brightness,
            ThemeMode.light => Brightness.light,
            ThemeMode.dark => Brightness.dark,
          },
        ),
        localizationsDelegates: localizationsDelegate,
        builder: (final context, final child) {
          final MediaQueryData mediaQueryData = MediaQuery.of(context);
          return MediaQuery(
            data: mediaQueryData.copyWith(
              /// We close the possibility to systematically
              /// increase or decrease the font for accessibility,
              /// so as not to break the layout
              textScaler: mediaQueryData.textScaler.clamp(
                minScaleFactor: 0.8,
                maxScaleFactor: 1.4,
              ),
            ),
            child: child ?? const SizedBox.shrink(),
          );
        },
      );
}
