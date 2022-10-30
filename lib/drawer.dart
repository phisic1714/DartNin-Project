import 'package:flutter/material.dart';
import 'package:flutter_application_3/GameHistory/homeHistory.dart';
import 'package:flutter_application_3/aboutUs.dart';

import 'home.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Image.network(
            'https://www.macthai.com/wp-content/uploads/2015/05/nintendo-characters-800x345.jpg'),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('หน้าแรก'),
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
                context, MaterialPageRoute(builder: (context) => homeHis()));
          },
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('ออกจากระบบ'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.group),
          title: Text('About US'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => about()));
          },
        ),
      ],
    ),
  );
}
