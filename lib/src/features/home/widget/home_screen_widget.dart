// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:weight_control/main.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(final BuildContext context) => CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Home'),
        ),
        child: Center(
          child: CupertinoButton.filled(
            onPressed: () async {
              final database = Dependencies.of(context).database;
              print(await database.select(database.logsTable).get());
            },
            child: const Text('asd'),
          ),
        ),
      );
}
