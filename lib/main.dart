import 'package:flutter/cupertino.dart';
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
      drawer: Drawer(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyRadio(),
                      ));
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const secondItem(),
                      ));
                },
              )
            ],
          ),
        ),
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
  List<String> provices = ['', 'BKK', 'Pathumthani', 'Outbound'];
  dynamic provice = '';
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      checkbox(),
      checkbox_value(),
      buildSelectField()
    ]));
  }

  Row checkbox_value() {
    return Row(children: [
      Text('$checkboxValueA'),
      Text('$checkboxValueB'),
    ]);
  }

  Row checkbox() {
    return Row(children: [
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
    ]);
  }

  InputDecorator buildSelectField() {
    return InputDecorator(
      decoration: const InputDecoration(labelText: 'Province'),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: provice,
          onChanged: (value) {
            setState(() {
              provice = value;
            });
          },
          items: provices
              .map(
                (value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class secondItem extends StatefulWidget {
  const secondItem({Key? key}) : super(key: key);

  @override
  State<secondItem> createState() => _secondItemState();
}

class _secondItemState extends State<secondItem> {
  dynamic route;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
