import 'package:flutter/material.dart';

class snesMenu extends StatefulWidget {
  const snesMenu({Key? key}) : super(key: key);

  @override
  State<snesMenu> createState() => _snesMenu();
}

class _snesMenu extends State<snesMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SNES'),
        ),
       
        body: Center(
          child: Text('body'),
        ));
  }
}
