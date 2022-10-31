import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/gameHistory.dart';
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
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const gamehis()));
          },
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('ออกจากระบบ'),
          onTap: () { _signOut();
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage(title: '',)));},
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('กลุ่มผู้พัฒนา'),
          onTap: () {},
        ),
      ],
    ),
  );
}

Future<void> _signOut() async {
  await FirebaseAuth.instance.signOut();
}