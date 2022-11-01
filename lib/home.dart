import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/GameCollection/gbcMenu.dart';
import 'package:flutter_application_3/GameCollection/nesMenu.dart';
import 'package:flutter_application_3/GameCollection/snesMenu.dart';
<<<<<<< HEAD
import 'package:flutter_application_3/widget Always Use/drawer.dart';
=======
//import 'package:flutter_application_3/widget Always Use/drawer.dart';
>>>>>>> 94daeb180434cd8a0a3b32a2de8164d4d3a14c92
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
<<<<<<< HEAD
=======
              //minVerticalPadding: 25.0,
              //minLeadingWidth: 10.0,
>>>>>>> 94daeb180434cd8a0a3b32a2de8164d4d3a14c92
              leading: Image.asset(
                'assets/snes.jpg',
              ),
              title: Text('SNES'),
<<<<<<< HEAD
=======
              subtitle: Text('Super Nintendo Entertainment System'),
>>>>>>> 94daeb180434cd8a0a3b32a2de8164d4d3a14c92
              trailing: Icon(Icons.arrow_forward_ios),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              tileColor: Colors.pinkAccent,
              textColor: Colors.white,
<<<<<<< HEAD
=======
              iconColor: Colors.white,
>>>>>>> 94daeb180434cd8a0a3b32a2de8164d4d3a14c92
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
<<<<<<< HEAD
=======
            //minVerticalPadding: 25.0,
>>>>>>> 94daeb180434cd8a0a3b32a2de8164d4d3a14c92
            leading: Image.asset(
              'assets/gbc.jpg',
            ),
            title: Text('GBC'),
<<<<<<< HEAD
=======
            subtitle: Text('Gameboy Color'),
>>>>>>> 94daeb180434cd8a0a3b32a2de8164d4d3a14c92
            trailing: Icon(Icons.arrow_forward_ios),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            tileColor: Colors.pinkAccent,
            textColor: Colors.white,
<<<<<<< HEAD
=======
            iconColor: Colors.white,
>>>>>>> 94daeb180434cd8a0a3b32a2de8164d4d3a14c92
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
<<<<<<< HEAD
              leading: Image.asset(
                'assets/nes.jpg',
              ),
=======
              // minVerticalPadding: 25.0,
              leading: Image.asset('assets/nes.jpg'),
              subtitle: Text('Nintendo Entertainment System'),
              //padding: EdgeInsets.all(8),
>>>>>>> 94daeb180434cd8a0a3b32a2de8164d4d3a14c92
              title: Text('NES'),
              trailing: Icon(Icons.arrow_forward_ios),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              tileColor: Colors.pinkAccent,
              textColor: Colors.white,
<<<<<<< HEAD
=======
              iconColor: Colors.white,
>>>>>>> 94daeb180434cd8a0a3b32a2de8164d4d3a14c92
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