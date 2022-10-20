import 'package:flutter/material.dart';

import 'home.dart';

Drawer drawer(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Image.network(
                'https://www.macthai.com/wp-content/uploads/2015/05/nintendo-characters-800x345.jpg'),
            ListTile(
              title: Text('หน้าแรก'),
              onTap: () {
                Navigator.push(context,
          MaterialPageRoute(builder: (context) => home()) );
              },
            ),
            ListTile(
              title: Text('โปรไฟล์'),
              onTap: () {},
            ),
            ListTile(
              title: Text('ตั้งค่า'),
              onTap: () {},
            ),
            ListTile(
              title: Text('ออกจากระบบ'),
              onTap: () {},
            ),
          ],
        ),
      );
  }