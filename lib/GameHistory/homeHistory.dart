import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/GameCollection/gbcMenu.dart';
import 'package:flutter_application_3/GameCollection/nesMenu.dart';
import 'package:flutter_application_3/GameCollection/snesMenu.dart';
import 'package:flutter_application_3/GameHistory/gbcHIs.dart';
import 'package:flutter_application_3/GameHistory/nesHIs.dart';
import 'package:flutter_application_3/GameHistory/sneshis.dart';
import 'package:flutter_application_3/widget Always Use/drawer.dart';
import 'package:flutter_application_3/runGame.dart';
import '../home.dart';
import 'package:flutter_application_3/runGame.dart';

class homeHis extends StatelessWidget {
  const homeHis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      backgroudImage(),
      Scaffold(
        appBar: AppBar(
          title: Text('game history'),
          actions: [
            IconButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home())),
                icon: Icon(Icons.home))
          ],
        ),
        drawer: drawer(context),
        backgroundColor: Colors.transparent,
        //backgroundColor: Image.asset("assets/mario.png"),
        body: ListView(children: [
          Card(
            child: ListTile(
              //minVerticalPadding: 10.0,
              leading: Image.asset(
                'assets/snes.jpg',
              ),
              title: Text('SNES'),
              subtitle: Text('Super Nintendo Entertainment System'),
              trailing: Icon(Icons.arrow_forward_ios),
              // shape: RoundedRectangleBorder(
              //    borderRadius: BorderRadius.circular(40)),
              tileColor: Colors.green,
              textColor: Colors.white,
              iconColor: Colors.white,
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
            //minVerticalPadding: 23.0,
            leading: Image.asset(
              'assets/gbc.jpg',
            ),
            title: Text('GBC'),
            subtitle: Text('Gameboy Color'),
            trailing: Icon(Icons.arrow_forward_ios),
            // shape:
            //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            tileColor: Colors.green,
            textColor: Colors.white,
            iconColor: Colors.white,
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
              //minVerticalPadding: 25.0,
              leading: Image.asset(
                'assets/nes.jpg',
              ),
              title: Text('NES'),
              subtitle: Text('Nintendo Entertainment System'),
              trailing: Icon(Icons.arrow_forward_ios),
              // shape: RoundedRectangleBorder(
              //    borderRadius: BorderRadius.circular(40)),
              tileColor: Colors.green,
              textColor: Colors.white,
              iconColor: Colors.white,
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
        ]),
      ),
    ]);
  }
}

Widget backgroudImage() {
  return ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      colors: [Colors.black, Colors.black12],
      begin: Alignment.bottomCenter,
      end: Alignment.center,
    ).createShader(bounds),
    blendMode: BlendMode.darken,
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg.png"),

          /// change this to your  image directory
          fit: BoxFit.cover,
          //colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        ),
      ),
    ),
  );
}
