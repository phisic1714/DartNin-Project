import 'package:flutter/material.dart';

void main() => runApp(const MyHome());

class MyHome extends StatelessWidget {
  final appTitle = 'Example Form';

  const MyHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      initialRoute: '/',
      routes: {
        //      '/homepage': (context) => Homepage(),
      },
      home: MyApp(title: appTitle),
    );
  }
}

class MyApp extends StatelessWidget {
  final String title;
  const MyApp({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: Center(
          child: ListView(children: const <Widget>[
        MyRadio(),
      ])),
    );
  }
}

class MyRadio extends StatefulWidget {
  const MyRadio({Key? key}) : super(key: key);

  @override
  _MyRadioState createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  bool checkboxValueA = true;
  bool checkboxValueB = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
//--- เพิ่มส่วนนี้
      Row(children: [
        Checkbox(
          value: checkboxValueA,
          onChanged: (bool? value) {
            setState(() {
              checkboxValueA = value!;
            });
          },
        ),
        const Text('CheckBox A'),
        Checkbox(
          value: checkboxValueB,
          onChanged: (bool? value) {
            setState(() {
              checkboxValueB = value!;
            });
          },
        ),
        const Text('CheckBox B'),
      ]),
      Row(children: [
        Text('$checkboxValueA'),
        Text('$checkboxValueB'),
      ])
    ]));
  }
}
