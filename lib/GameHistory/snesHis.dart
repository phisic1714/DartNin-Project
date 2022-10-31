import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/GameCollection/snesMenu.dart';

class snesHis extends StatelessWidget {
  const snesHis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Super Nintendo Entertainment System'),
      ),
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 27, 126, 68),
            padding: EdgeInsets.all(8),
            child: Text(
              "ซูเปอร์แฟมิคอม ",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Nintendo_Super_Famicom_logo.svg/220px-Nintendo_Super_Famicom_logo.svg.png"),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(8),
            child: Text(
              '(อังกฤษ: Super Famicom)หรือซูเปอร์ฟามิคอม (ญี่ปุ่น: スーパーファミコン; โรมาจิ: Sūpāfamicon) หรือชื่อที่วางจำหน่ายในสหรัฐอเมริกาคือ ซูเปอร์นินเทนโดเอ็นเตอร์เทนเมนต์ซิสเตม (SNES) เป็นเครื่องเล่นวิดีโอเกมของบริษัทนินเทนโด',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/SNES-Mod1-Console-Set.jpg/1920px-SNES-Mod1-Console-Set.jpg",
            width: 100,
            height: 200,
          ),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(8),
            child: Text(
              'ซูเปอร์แฟมิคอมเป็นเครื่องเล่นเกมรุ่นที่สองของนินเทนโด (นับเป็นเครื่องเล่นวิดีโอเกมยุคที่สี่) ถัดจากแฟมิคอม เครื่องซูเปอร์แฟมิคอมเป็นเครื่องเกมคอนโซลแบบ 16 บิทที่ประสบความสำเร็จมากที่สุดในยุคนั้น สามารถเอาชนะคู่แข่งอย่างเครื่องเมกาไดรฟ์ของเซกาได้ แม้แต่หลังจากที่ยุคของเกม 16 บิทจะสิ้นสุดลงไปนานแล้ว เครื่องซูเปอร์แฟมิคอมก็ยังเป็นที่นิยมของนักสะสม                                     และนักพัฒนาอีมูเลเตอร์',
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
              builder: (context) => const SnesMenu(),
            ),
          );
        },
      ),
    );
  }
}
