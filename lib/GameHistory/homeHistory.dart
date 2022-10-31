import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/GameCollection/gbcMenu.dart';
import 'package:flutter_application_3/GameCollection/nesMenu.dart';
import 'package:flutter_application_3/GameCollection/snesMenu.dart';
import 'package:flutter_application_3/GameHistory/gbcHIs.dart';
import 'package:flutter_application_3/GameHistory/nesHIs.dart';
import 'package:flutter_application_3/GameHistory/sneshis.dart';
import 'package:flutter_application_3/drawer.dart';
import 'package:flutter_application_3/runGame.dart';

class homeHis extends StatelessWidget {
  const homeHis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('game history'),
        ),
        drawer: drawer(context),
        backgroundColor: Colors.white,
        body: ListView(children: [
          Card(
            child: ListTile(
              leading: Image.asset(
                'assets/snes.jpg',
              ),
              title: Text('SNES'),
              trailing: Icon(Icons.arrow_forward_ios),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              tileColor: Colors.green,
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const snesHis(),
                  ),
                );
              },
            ),
          ),
          Card(
              child: ListTile(
            leading: Image.asset(
              'assets/gbc.jpg',
            ),
            title: Text('GBC'),
            trailing: Icon(Icons.arrow_forward_ios),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            tileColor: Colors.green,
            textColor: Colors.white,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const gbcHis(),
                ),
              );
            },
          )),
          Card(
            child: ListTile(
              leading: Image.asset(
                'assets/nes.jpg',
              ),
              title: Text('NES'),
              trailing: Icon(Icons.arrow_forward_ios),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              tileColor: Colors.green,
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const nesHis(),
                  ),
                );
              },
            ),
          ),
        ]));
  }
}
