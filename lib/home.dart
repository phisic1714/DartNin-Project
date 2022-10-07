import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Image.network(
                'https://www.macthai.com/wp-content/uploads/2015/05/nintendo-characters-800x345.jpg'),
            ListTile(
              title: Text('หน้าแรก'),
              onTap: () {
                Navigator.pushNamed(context, '/');
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
                    Navigator.pushNamed(context, '/menu');
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
                    Navigator.pushNamed(context, '/menu2');
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
                    Navigator.pushNamed(context, '/menu3');
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
