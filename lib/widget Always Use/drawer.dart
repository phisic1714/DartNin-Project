import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/widget Always Use/drawer.dart
import 'package:flutter_application_3/GameHistory/homeHistory.dart';
import '../aboutUs.dart';
=======
import 'package:flutter_application_3/aboutUs.dart';
import 'package:flutter_application_3/gameHistory.dart';
import '../GameHistory/homeHistory.dart';
>>>>>>> 94daeb180434cd8a0a3b32a2de8164d4d3a14c92:lib/widgetUseAllPage/drawer.dart
import '../home.dart';
import '../main.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Image.network(
            'https://www.macthai.com/wp-content/uploads/2015/05/nintendo-characters-800x345.jpg'),
        ListTile(
          title: Text('หน้าแรก'),
          leading: Icon(Icons.home),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => home()));
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('โปรไฟล์'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('ตั้งค่า'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.gamepad),
          title: Text('ประวัติเกม'),
          onTap: () {
<<<<<<< HEAD:lib/widget Always Use/drawer.dart
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const homeHis()));
=======
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const homeHis()));
>>>>>>> 94daeb180434cd8a0a3b32a2de8164d4d3a14c92:lib/widgetUseAllPage/drawer.dart
          },
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('ออกจากระบบ'),
          onTap: () {
            _signOut();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LoginPage(
                          title: '',
                        )));
          },
        ),
        ListTile(
<<<<<<< HEAD:lib/widget Always Use/drawer.dart
          leading: Icon(Icons.person),
          title: Text('กลุ่มผู้พัฒนา'),
          onTap: () {Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const about()));},
=======
          leading: Icon(Icons.group),
          title: Text('About Us'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const about()));
          },
>>>>>>> 94daeb180434cd8a0a3b32a2de8164d4d3a14c92:lib/widgetUseAllPage/drawer.dart
        ),
      ],
    ),
  );
}

Future<void> _signOut() async {
  await FirebaseAuth.instance.signOut();
}
