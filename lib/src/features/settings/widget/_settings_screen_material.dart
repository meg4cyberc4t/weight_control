part of 'settings_screen.dart';

/// {@template SettingsScreenWidget$Material}
/// Presentation of the [SettingsScreenWidget] for Material Design
/// {@endtemplate}
class _SettingsScreenWidget$Material extends StatelessWidget {
  /// {@macro SettingsScreenController}
  final SettingsScreenController controller;

  /// {@macro SettingsScreenWidget$Material}
  const _SettingsScreenWidget$Material({required this.controller});

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(context.localizations.settings),
          ),
          SliverToBoxAdapter(
            child: _HeaderBlock(
              name: context.localizations.data,
            ),
          ),
          const SliverToBoxAdapter(
            child: _SettingsDesignModeSwitch$Material(),
          ),
          const SliverToBoxAdapter(
            child: _SettingsThemeModeSwitch$Material(),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              leading: Icon(
                Icons.delete,
                color: theme.colorScheme.error,
              ),
              title: Text(context.localizations.deleteAll),
              onTap: () => controller.deleteAllData(context),
            ),
          ),
          SliverToBoxAdapter(
            child: _HeaderBlock(
              name: context.localizations.aboutApp,
            ),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              leading: const Icon(Icons.settings_applications),
              title: Text(context.localizations.version),
              trailing: Text(controller.version),
              onTap: controller.copyVersion,
            ),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              leading: const Icon(Icons.star),
              title: Text(context.localizations.rateTheApp),
              onTap: controller.rateTheApp,
            ),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              leading: const Icon(Icons.document_scanner),
              title: Text(context.localizations.licenses),
              onTap: controller.openLicenses,
            ),
          ),
          SliverToBoxAdapter(
            child: _HeaderBlock(
              name: context.localizations.additional,
            ),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              leading: const Icon(Icons.source),
              title: Text(context.localizations.sourceCode),
              onTap: controller.openSourceCode,
            ),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              leading: const Icon(Icons.bug_report_outlined),
              title: Text(context.localizations.reportABug),
              onTap: controller.reportABug,
            ),
          ),
        ],
      ),
    );
  }
}

class _HeaderBlock extends StatelessWidget {
  final String name;

  const _HeaderBlock({
    required this.name,
  });

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: Text(
        name,
        style: theme.textTheme.titleSmall
            ?.copyWith(color: theme.colorScheme.primary),
      ),
    );
  }
}

class _SettingsDesignModeSwitch$Material extends StatelessWidget {
  const _SettingsDesignModeSwitch$Material();

  @override
  Widget build(final BuildContext context) {
    final themeMode = SettingsScope.designModeOf(context);

    return ListTile(
      leading: Icon(
        switch (themeMode) {
          DesignMode.material => Icons.android,
          DesignMode.cupertino => Icons.apple,
        },
      ),
      title: Text(context.localizations.themeMode),
      trailing: Text(themeMode.name),
      onTap: SettingsScope.controllerOf(context).nextDesignMode,
    );
  }
}

class _SettingsThemeModeSwitch$Material extends StatelessWidget {
  const _SettingsThemeModeSwitch$Material();

  @override
  Widget build(final BuildContext context) {
    final themeMode = SettingsScope.themeModeOf(context);

    return ListTile(
      leading: Icon(
        switch (themeMode) {
          ThemeMode.system => Icons.all_out_rounded,
          ThemeMode.light => Icons.wb_sunny_rounded,
          ThemeMode.dark => Icons.nightlight_rounded,
        },
      ),
      title: Text(context.localizations.designMode),
      onTap: SettingsScope.controllerOf(context).nextThemeMode,
    );
  }
}
