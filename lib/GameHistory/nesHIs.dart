import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/GameCollection/gbcMenu.dart';
import 'package:flutter_application_3/GameCollection/nesMenu.dart';

class nesHis extends StatelessWidget {
  const nesHis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nintendo Entertainment System'),
      ),
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 27, 50, 126),
            padding: EdgeInsets.all(8),
            child: Text(
              "เครื่องเกมนินเทนโด หรือ แฟมิคอม ",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/NES_logo.svg/220px-NES_logo.svg.png",
            width: 200,
            height: 100,
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Family_Computer_logo.svg/220px-Family_Computer_logo.svg.png",
            width: 200,
            height: 50,
          ),
          Container(
            color: Color.fromARGB(255, 27, 50, 126),
            padding: EdgeInsets.all(8),
            child: Text(
              "(ญี่ปุ่น: ファミコン; โรมาจิ: Famikon) หรือ เครื่องเกมนินเทนโด (Nintendo Entertainment System: NES) เป็นเครื่องเล่นวิดีโอเกม 8 บิต ผลิตโดยบริษัทนินเทนโด ชื่อของแฟมิคอมมาจากคำเต็มว่า แฟมิลี่คอมพิวเตอร์ (Family Computer) (ญี่ปุ่น: ファミリーコンピュータ; โรมาจิ: Famirī Konpyūta) คนไทยมักเรียกเครื่องเล่นเกมชนิดนี้ว่า เครื่องแฟมิลี่  ",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1024px-NES-Console-Set.jpg",
            width: 100,
            height: 200,
          ),
          Container(
            color: Color.fromARGB(255, 27, 50, 126),
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
              builder: (context) => const NesMenu(),
            ),
          );
        },
      ),
    );
  }
}
