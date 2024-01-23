// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Home')),
      );
}
