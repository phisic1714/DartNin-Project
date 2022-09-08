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
  dynamic route;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              initialValue: 'Mr.A',
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person), border: OutlineInputBorder()),
            ),
            Row(children: [
              Radio(
                value: 1,
                groupValue: route,
                onChanged: (value) {
                  setState(() {
                    route = value;
                  });
                },
              ),
              const Text('Round Trip'),
              Radio(
                value: 0,
                groupValue: route,
                onChanged: (value) {
                  // _handleTapboxChanged(value);
                  setState(() {
                    route = value;
                  });
                },
              ),
              const Text('One way'),
            ]),
            Row(children: [
              Text('$route'),
            ]),
          ]),
    );
  }
}
