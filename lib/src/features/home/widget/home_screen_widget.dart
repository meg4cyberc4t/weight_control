import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octopus/octopus.dart';
import 'package:weight_control/src/common/config/config.dart';
import 'package:weight_control/src/common/localizations/localizations_state_mixin.dart';
import 'package:weight_control/src/features/settings/widget/settings_screen.dart';

enum HomeTabs {
  create('create'),
  dashboard('dashboard'),
  settings('settings');

  final String name;
  const HomeTabs(this.name);

  /// Creates a new instance of [HomeTabs] from a string.
  static HomeTabs fromValue(
    final String? value, {
    final HomeTabs? fallbackValue,
  }) =>
      switch (value?.trim().toLowerCase()) {
        'create' => HomeTabs.create,
        'dashboard' => HomeTabs.dashboard,
        'settings' => HomeTabs.settings,
        _ => fallbackValue ?? (throw ArgumentError.value(value)),
      };
}

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  late final OctopusStateObserver _octopusStateObserver;

  // Current tab
  HomeTabs _tab = _defaultValue;

  static const _defaultValue = HomeTabs.dashboard;

  @override
  void initState() {
    _octopusStateObserver = context.octopus.observer;
    _tab = HomeTabs.fromValue(
      _octopusStateObserver.value.arguments['tab'],
      fallbackValue: _defaultValue,
    );
    _octopusStateObserver.addListener(_onNavigationStateChanged);
    super.initState();
  }

  // Router state changed
  void _onNavigationStateChanged() {
    final newTab = HomeTabs.fromValue(
      _octopusStateObserver.value.arguments['tab'],
      fallbackValue: _defaultValue,
    );
    _switchTab(newTab);
  }

  // Change tab
  void _switchTab(final HomeTabs tab) {
    if (!mounted) {
      return;
    }
    if (_tab == tab) {
      return;
    }
    context.octopus.setArguments((final args) => args['tab'] = tab.name);
    setState(() => _tab = tab);
  }

  @override
  void dispose() {
    _octopusStateObserver.removeListener(_onNavigationStateChanged);
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => switch (Config.platform) {
        SupportedPlatform.android => _HomeScreenWidget$Material(
            activeTab: _tab,
            onSwitchTab: _switchTab,
          ),
        SupportedPlatform.ios => _HomeScreenWidget$Cupertino(
            activeTab: _tab,
            onSwitchTab: _switchTab,
          ),
      };
}

class _HomeScreenWidget$Material extends StatelessWidget {
  final HomeTabs activeTab;
  final ValueChanged<HomeTabs> onSwitchTab;

  const _HomeScreenWidget$Material({
    required this.activeTab,
    required this.onSwitchTab,
  });

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: switch (activeTab) {
          HomeTabs.create ||
          HomeTabs.settings ||
          HomeTabs.dashboard =>
            const SettingsScreenWidget(),
        },
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (final value) =>
              onSwitchTab(HomeTabs.values[value]),
          selectedIndex: activeTab.index,
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.add_outlined),
              selectedIcon: const Icon(Icons.add),
              label: context.localizations.create,
            ),
            NavigationDestination(
              icon: const Icon(Icons.auto_graph_outlined),
              selectedIcon: const Icon(Icons.auto_graph),
              label: context.localizations.dashboard,
            ),
            NavigationDestination(
              icon: const Icon(Icons.settings_outlined),
              selectedIcon: const Icon(Icons.settings),
              label: context.localizations.settings,
            ),
          ],
        ),
      );
}

class _HomeScreenWidget$Cupertino extends StatelessWidget {
  final HomeTabs activeTab;
  final ValueChanged<HomeTabs> onSwitchTab;

  const _HomeScreenWidget$Cupertino({
    required this.activeTab,
    required this.onSwitchTab,
  });

  @override
  Widget build(final BuildContext context) => CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          onTap: (final value) => onSwitchTab(HomeTabs.values[value]),
          items: [
            BottomNavigationBarItem(
              icon: const Icon(CupertinoIcons.add),
              label: context.localizations.create,
            ),
            BottomNavigationBarItem(
              icon: const Icon(CupertinoIcons.graph_square),
              activeIcon: const Icon(CupertinoIcons.graph_square_fill),
              label: context.localizations.dashboard,
            ),
            BottomNavigationBarItem(
              icon: const Icon(CupertinoIcons.settings),
              activeIcon: const Icon(CupertinoIcons.settings_solid),
              label: context.localizations.settings,
            ),
          ],
        ),
        tabBuilder: (final context, final index) {
          final tab = HomeTabs.values[index];
          switch (tab) {
            case HomeTabs.create:
            // TODO(meg4cyberc4t): CreateScreenWidget
            case HomeTabs.dashboard:
            // TODO(meg4cyberc4t): DashboardScreenWidget
            case HomeTabs.settings:
              return const SettingsScreenWidget();
          }
        },
      );
}
