import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/GameCollection/gbcMenu.dart';
import 'package:flutter_application_3/GameCollection/nesMenu.dart';
import 'package:flutter_application_3/GameCollection/snesMenu.dart';
//import 'package:flutter_application_3/widget Always Use/drawer.dart';
import 'package:flutter_application_3/runGame.dart';
import 'package:flutter_application_3/widgetUseAllPage/drawer.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HOME'),
        ),
        drawer: drawer(context),
        backgroundColor: Colors.white,
        body: ListView(children: [
          Card(
            child: ListTile(
              //minVerticalPadding: 25.0,
              //minLeadingWidth: 10.0,
              leading: Image.asset(
                'assets/snes.jpg',
              ),
              title: Text('SNES'),
              subtitle: Text('Super Nintendo Entertainment System'),
              trailing: Icon(Icons.arrow_forward_ios),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              tileColor: Colors.pinkAccent,
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SnesMenu(),
                  ),
                );
              },
            ),
          ),
          Card(
              child: ListTile(
            //minVerticalPadding: 25.0,
            leading: Image.asset(
              'assets/gbc.jpg',
            ),
            title: Text('GBC'),
            subtitle: Text('Gameboy Color'),
            trailing: Icon(Icons.arrow_forward_ios),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            tileColor: Colors.pinkAccent,
            textColor: Colors.white,
            iconColor: Colors.white,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GBCMenu(),
                ),
              );
            },
          )),
          Card(
            child: ListTile(
              // minVerticalPadding: 25.0,
              leading: Image.asset('assets/nes.jpg'),
              subtitle: Text('Nintendo Entertainment System'),
              //padding: EdgeInsets.all(8),
              title: Text('NES'),
              trailing: Icon(Icons.arrow_forward_ios),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              tileColor: Colors.pinkAccent,
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NesMenu(),
                  ),
                );
              },
            ),
          ),
        ]));
  }
}
