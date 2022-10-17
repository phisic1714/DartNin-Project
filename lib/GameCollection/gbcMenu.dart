import 'package:flutter/material.dart';

class GbcMenu extends StatefulWidget {
  const GbcMenu({Key? key}) : super(key: key);

  @override
  State<GbcMenu> createState() => _MyGbcMenu();
}

class _MyGbcMenu extends State<GbcMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GBC'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Image.network(
                  'https://www.macthai.com/wp-content/uploads/2015/05/nintendo-characters-800x345.jpg'),
              ListTile(
                title: Text('หน้าแรก'),
                onTap: () {
                  Navigator.pushNamed(context, '/home');
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
        ),
        body: Center(
          child: Text('body'),
        ));
  }
}