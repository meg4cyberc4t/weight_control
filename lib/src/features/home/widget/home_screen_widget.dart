// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:weight_control/src/common/localizations/localizations_state_mixin.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(final BuildContext context) => CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(context.localizations.title),
        ),
        child: Center(
          child: CupertinoButton.filled(
            onPressed: () async {},
            child: const Text('asd'),
          ),
        ),
      );
}
