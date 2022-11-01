import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: ListView(children: [
        Container(
          color: Color.fromARGB(255, 129, 206, 161),
          child: Image.asset(
            'assets/Peera.jpg',
            width: 150,
            height: 180,
          ),
        ),
        Container(
          color: Color.fromARGB(255, 129, 206, 161),
          padding: EdgeInsets.all(8),
          child: Text(
            "นายพี​รพัฒน์​ สาร​ิ​มาน ​116310462018-7 ​",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        Container(
          color: Color.fromARGB(255, 129, 206, 161),
          padding: EdgeInsets.all(8),
          child: Text(
            "Sec 2 146CPE2 ​",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        Container(
          color: Color.fromARGB(255, 67, 207, 125),
          child: Image.asset(
            'assets/payupat.jpg',
            width: 150,
            height: 180,
          ),
        ),
        Container(
          color: Color.fromARGB(255, 67, 207, 125),
          padding: EdgeInsets.all(8),
          child: Text(
            "​นายพายุพัด สมพรสุขสวัสดิ์ 116310400125-5",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        Container(
          color: Color.fromARGB(255, 67, 207, 125),
          padding: EdgeInsets.all(8),
          child: Text(
            "Sec 2 146CPE2 ​",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        Container(
          color: Color.fromARGB(255, 129, 206, 161),
          child: Image.asset(
            'assets/P.jpg',
            width: 150,
            height: 180,
          ),
        ),
        Container(
          color: Color.fromARGB(255, 129, 206, 161),
          padding: EdgeInsets.all(8),
          child: Text(
            "นาย พิสิษฐ์ กองแก้ว 116310462030-2​",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        Container(
          color: Color.fromARGB(255, 129, 206, 161),
          padding: EdgeInsets.all(8),
          child: Text(
            "Sec 2 146CPE2 ​",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ]),
    );
  }
}
