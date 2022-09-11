import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(const MyHome());

class MyHome extends StatelessWidget {
  final appTitle = 'Example Form';

  const MyHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyRadio(),
    );
  }
}

class MyRadio extends StatefulWidget {
  const MyRadio({Key? key}) : super(key: key);

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  @override
  File? _avatar;
  bool checkboxValueA = true;
  bool checkboxValueB = true;
  List<String> provices = ['', 'BKK', 'Pathumthani', 'Outbound'];
  dynamic provice = '';
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
                UserAccountsDrawerHeader(
                  accountName: Text('พีรพัฒน์ สาริมาน'),
                  accountEmail: Text('phisic1714@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    child: FlutterLogo(size: 42.0),
                    backgroundColor: Colors.lightGreen,
                  ),
                ),
                ListTile(
                  title: Text('Checkbox'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyRadio()));
                  },
                ),
                ListTile(
                  title: Text('Radio Button'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mycheckbox()));
                  },
                )
              ],
            ),
          ),
        ),
        body: Column(children: <Widget>[
          checkbox(),
          checkbox_value(),
          buildSelectField(),
          buildDateField(),
          _avatar == null
              ? ElevatedButton(
                  onPressed: () {
                    onChooseImage();
                  },
                  child: Text('Choose avatar'),
                )
              : Image.file(_avatar!)
        ]));
  }

  onChooseImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _avatar = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  DateTimeField buildDateField() {
    final _format = DateFormat('dd/MM/yyyy');
    return DateTimeField(
      decoration: InputDecoration(labelText: 'Birth Date'),
      format: _format,
      onShowPicker: (context, currentValue) {
        return showDatePicker(
            context: context,
            firstDate: DateTime(1900),
            initialDate: currentValue ?? DateTime.now(),
            lastDate: DateTime(2100));
      },
    );
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

class Mycheckbox extends StatefulWidget {
  const Mycheckbox({Key? key}) : super(key: key);

  @override
  State<Mycheckbox> createState() => _MycheckboxState();
}

class _MycheckboxState extends State<Mycheckbox> {
  dynamic route;

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
              UserAccountsDrawerHeader(
                accountName: Text('พีรพัฒน์ สาริมาน'),
                accountEmail: Text('phisic1714@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: FlutterLogo(size: 42.0),
                  backgroundColor: Colors.lightGreen,
                ),
              ),
              ListTile(
                title: Text('Checkbox'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyRadio()));
                },
              ),
              ListTile(
                title: Text('Radio Button'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Mycheckbox()));
                },
              )
            ],
          ),
        ),
      ),
      body: radio(),
    );
  }

  Column radio() {
    return Column(
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
        ]);
  }
}
