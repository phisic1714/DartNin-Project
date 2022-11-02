import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/GameCollection/gbcMenu.dart';
import 'package:flutter_application_3/GameCollection/nesMenu.dart';
import 'package:flutter_application_3/GameCollection/snesMenu.dart';
import 'package:flutter_application_3/widget Always Use/drawer.dart';
//import 'package:flutter_application_3/widget Always Use/drawer.dart';
import 'package:flutter_application_3/runGame.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      backgroudImage(),
      Scaffold(
        appBar: AppBar(
          title: Text('HOME'),
        ),
        drawer: drawer(context),
        backgroundColor: Colors.transparent,
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
              //shape: RoundedRectangleBorder(
              //    borderRadius: BorderRadius.circular(40)),
              tileColor: Color.fromARGB(255, 195, 70, 233),
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
            // shape:
            //    RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            tileColor: Color.fromARGB(255, 194, 76, 230),
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
              leading: Image.asset(
                'assets/nes.jpg',
              ),
              // minVerticalPadding: 25.0,
              subtitle: Text('Nintendo Entertainment System'),
              //padding: EdgeInsets.all(8),
              title: Text('NES'),
              trailing: Icon(Icons.arrow_forward_ios),
              //shape: RoundedRectangleBorder(
              //    borderRadius: BorderRadius.circular(20),
              //   side: BorderSide(color: Colors.black)),
              tileColor: Color.fromARGB(255, 194, 76, 230),
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
        ]),
      )
    ]);
  }
<<<<<<< HEAD
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
=======
}
>>>>>>> 6ab9c06b81d0bbf0e59531fee451d9268a1fa16a
