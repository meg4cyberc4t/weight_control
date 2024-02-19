part of 'settings_screen.dart';

/// {@template SettingsScreenWidget$Cupertino}
/// Presentation of the [SettingsScreenWidget] for Cupertino Design
/// {@endtemplate}
class _SettingsScreenWidget$Cupertino extends StatelessWidget {
  /// {@macro SettingsScreenController}
  final SettingsScreenController controller;

  /// {@macro SettingsScreenWidget$Cupertino}
  const _SettingsScreenWidget$Cupertino({required this.controller});

  @override
  Widget build(final BuildContext context) => CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              largeTitle: Text(context.localizations.settings),
            ),
            SliverToBoxAdapter(
              child: CupertinoListSection.insetGrouped(
                header: Text(context.localizations.data),
                children: [
                  const _SettingsDesignModeSwitch$Cupertino(),
                  const _SettingsThemeModeSwitch$Cupertino(),
                  CupertinoListTile.notched(
                    leading: const Icon(
                      CupertinoIcons.trash_fill,
                      color: CupertinoColors.destructiveRed,
                    ),
                    title: Text(context.localizations.deleteAll),
                    onTap: () => controller.deleteAllData(context),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: CupertinoListSection.insetGrouped(
                header: Text(context.localizations.aboutApp),
                children: [
                  CupertinoListTile.notched(
                    leading: const Icon(CupertinoIcons.app_badge),
                    title: Text(context.localizations.version),
                    additionalInfo: Text(controller.version),
                    onTap: controller.copyVersion,
                  ),
                  CupertinoListTile.notched(
                    leading: const Icon(CupertinoIcons.star),
                    title: Text(context.localizations.rateTheApp),
                    onTap: controller.rateTheApp,
                  ),
                  CupertinoListTile.notched(
                    leading: const Icon(CupertinoIcons.doc),
                    title: Text(context.localizations.licenses),
                    onTap: controller.openLicenses,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: CupertinoListSection.insetGrouped(
                header: Text(context.localizations.additional),
                children: [
                  CupertinoListTile.notched(
                    leading: const Icon(
                      CupertinoIcons.cube_box,
                    ),
                    title: Text(context.localizations.sourceCode),
                    onTap: controller.openSourceCode,
                  ),
                  CupertinoListTile.notched(
                    leading: const Icon(CupertinoIcons.ant),
                    title: Text(context.localizations.reportABug),
                    onTap: controller.reportABug,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

class _SettingsDesignModeSwitch$Cupertino extends StatelessWidget {
  const _SettingsDesignModeSwitch$Cupertino();

  @override
  Widget build(final BuildContext context) {
    final themeMode = SettingsScope.stateOf(context, listen: true).designMode;

    return CupertinoListTile.notched(
      leading: const Icon(CupertinoIcons.selection_pin_in_out),
      title: Text(context.localizations.designMode),
      trailing: Text(themeMode.name),
      onTap: SettingsScope.controllerOf(context).nextDesignMode,
    );
  }
}

class _SettingsThemeModeSwitch$Cupertino extends StatelessWidget {
  const _SettingsThemeModeSwitch$Cupertino();

  @override
  Widget build(final BuildContext context) {
    final themeMode = SettingsScope.stateOf(context, listen: true).themeMode;

    return CupertinoListTile.notched(
      leading: Icon(
        switch (themeMode) {
          ThemeMode.system => CupertinoIcons.suit_diamond_fill,
          ThemeMode.light => CupertinoIcons.sun_min_fill,
          ThemeMode.dark => CupertinoIcons.moon_fill,
        },
      ),
      title: Text(context.localizations.themeMode),
      onTap: SettingsScope.controllerOf(context).nextThemeMode,
    );
  }
}
