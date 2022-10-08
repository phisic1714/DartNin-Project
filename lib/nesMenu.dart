import 'package:flutter/material.dart';

class NesMenu extends StatefulWidget {
  const NesMenu({Key? key}) : super(key: key);

  @override
  State<NesMenu> createState() => _NesMenu();
}

class _NesMenu extends State<NesMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NES'),
        ),
        
        body: Center(
          child: Text('body'),
        ));
  }
}
