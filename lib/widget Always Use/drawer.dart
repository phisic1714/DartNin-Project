import 'dart:async';
import 'dart:core';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/GameHistory/homeHistory.dart';
import '../aboutUs.dart';
import 'package:flutter_application_3/aboutUs.dart';
import '../GameHistory/homeHistory.dart';
import '../home.dart';
import '../main.dart';
import '../forAdminUser/addGame.dart';
import '../Allgame.dart';

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
        //  ListTile(
        //    leading: Icon(Icons.settings),
        //   title: Text('ตั้งค่า'),
        //   onTap: () {},
        //  ),
        ListTile(
          leading: Icon(Icons.gamepad),
          title: Text('ประวัติเกม'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const homeHis()));
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const homeHis()));
          },
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('สำหรับผู้พัฒนา'),
          onTap: () {
            _signOut();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const addgame()));
          },
        ),
        ListTile(
          leading: Icon(Icons.group),
          title: Text('About Us'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const about()));
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
      ],
    ),
  );
}

Future<void> _signOut() async {
  await FirebaseAuth.instance.signOut();
}
