import 'package:flutter/material.dart';

class GbcMenu extends StatefulWidget {
  const GbcMenu({Key? key}) : super(key: key);

  @override
  State<GbcMenu> createState() => _MyGbcMenu();
}

class _MyGbcMenu extends State<GbcMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GBC'),
        ),
        
        body: Center(
          child: Text('body'),
        ));
  }
}
