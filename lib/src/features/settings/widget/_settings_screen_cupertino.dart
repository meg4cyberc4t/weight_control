part of 'settings_screen.dart';

/// {@template SettingsScreenWidget$Cupertino}
/// Presentation of the [SettingsScreenWidget] for Cupertino Design
/// {@endtemplate}
class SettingsScreenWidget$Cupertino extends StatelessWidget {
  /// {@macro SettingsScreenController}
  final SettingsScreenController controller;

  /// {@macro SettingsScreenWidget$Cupertino}
  const SettingsScreenWidget$Cupertino({
    required this.controller,
    super.key,
  });

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
                header: Text(context.localizations.aboutApp),
                children: [
                  CupertinoListTile.notched(
                    leading: const Icon(CupertinoIcons.app_badge),
                    title: Text(context.localizations.version),
                    additionalInfo: Text(controller.version.toString()),
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
