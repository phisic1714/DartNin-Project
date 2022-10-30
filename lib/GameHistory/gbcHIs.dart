import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/GameCollection/gbcMenu.dart';

class gbcHis extends StatelessWidget {
  const gbcHis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gameboy Color'),
      ),
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 27, 114, 126),
            padding: EdgeInsets.all(8),
            child: Text(
              "เกมบอยคัลเลอร์ ",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Game_Boy_Color_logo.svg/220px-Game_Boy_Color_logo.svg.png"),
          Container(
            color: Color.fromARGB(255, 27, 114, 126),
            padding: EdgeInsets.all(8),
            child: Text(
              "(อังกฤษ: Game Boy Color; ญี่ปุ่น: ゲームボーイカラー; โรมาจิ: Gēmu Bōi Karā เรียกสั้น ๆ ว่า GBC)  ",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/0/00/Game_Boy_Color_%28green%29.png",
            width: 200,
            height: 300,
          ),
          Container(
            color: Color.fromARGB(255, 27, 114, 126),
            padding: EdgeInsets.all(8),
            child: Text(
              "เป็นเครื่องเกมของนินเทนโด อีกรุ่นหนึ่งของเกมบอย ออกวางขายในญี่ปุ่นเมื่อวันที่ 21 ตุลาคม ค.ศ. 1998 ในอเมริกาเหนือเมื่อ 19 พฤศจิกายน ค.ศ. 1998 และในยุโรปเมื่อวันที่ 23 พฤศจิกายน ค.ศ. 1998 มีจอสีและมีขนาดหนาและยาวกว่าเกมบอยพ็อกเก็ตเล็กน้อย แต่เล็กกว่าเกมบอยรุ่นดั้งเดิม เกมบอยและเกมบอยคัลเลอร์มียอดขายรวมกันทั่วโลก                118.69 ล้านเครื่อง",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.videogame_asset),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GBCMenu(),
            ),
          );
        },
      ),
    );
  }
}
