import 'package:flutter/material.dart';
import 'package:flutter_application_3/GameCollection/gbcMenu.dart';
import 'package:flutter_application_3/GameCollection/nesMenu.dart';
import 'package:flutter_application_3/GameCollection/snesMenu.dart';
import 'package:flutter_application_3/GameCollection/runGame.dart';
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      
      backgroundColor: Colors.white,
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: NetworkImage(
                      'https://cdn.dribbble.com/users/342985/screenshots/1856135/supernintendo.png'),
                  width: 150,
                  height: 150,
                ),
                ElevatedButton(
                  child: Text('SNES'),
                  onPressed: () {
                    Navigator.push(context,
            MaterialPageRoute(
              builder: (context) => const runGame(),
            ),);
                  },
                ),
                Image(
                  image: NetworkImage(
                      'https://cdn.dribbble.com/users/342985/screenshots/1857137/media/01ce8f39b3374100fe5663a1ede559fa.png?compress=1&resize=400x300&vertical=top'),
                  width: 150,
                  height: 150,
                ),
                ElevatedButton(
                  child: Text('GBC'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Gbc');
                  },
                ),
                Image(
                  image: NetworkImage(
                      'https://cdn.dribbble.com/users/342985/screenshots/1854453/nintendo-icon.png'),
                  width: 150,
                  height: 150,
                ),
                ElevatedButton(
                  child: Text('NES'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Nes');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
