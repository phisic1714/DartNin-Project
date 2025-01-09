import 'dart:convert';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../widget Always Use/drawer.dart';
import '../home.dart';
import '../runGame.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class addgame extends StatefulWidget {
  const addgame({Key? key}) : super(key: key);

  @override
  State<addgame> createState() => _addgame();
}

class _addgame extends State<addgame> {
  @override

  String image = '';
  String name = '';
  String game = '';
  String dropdownvalue = 'Select Type';

  // List of items in our dropdown menu
  var items = [
    'nes',
    'snes',
    'gbc',
  ];


  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Add Games'),
          actions: [
            IconButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home())),
                icon: Icon(Icons.home))
          ],
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('game')
              .orderBy("name", descending: true)
              .snapshots(),
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot> querySnapshot) {
            if (querySnapshot.hasError) {
              return Center(child: (Text("Error")));
            } else if (querySnapshot.hasData) {
              return Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Game Name',
                        hintText: "Name...",
                        hintStyle: TextStyle(color: Colors.black)),
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      // Update the key when the value changes.
                      setState(() => name = value);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Game URL',
                        hintText: "URL...",
                        hintStyle: TextStyle(color: Colors.black)),
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      // Update the key when the value changes.
                      setState(() => game = value);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Image URL',
                        hintText: "URL...",
                        hintStyle: TextStyle(color: Colors.black)),
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      // Update the key when the value changes.
                      setState(() => image = value);
                    },
                  ),
                ),
                DropdownButton(
                  hint: Text(dropdownvalue),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      FirebaseFirestore.instance.collection('game').add({
                        'name': name,
                        'game': game,
                        'image': image,
                        'type': dropdownvalue
                      });
                      setState(() {
                        name = '';
                        game = '';
                        image = '';
                        dropdownvalue = 'Select Type';
                      });
                    },
                    child: Text('Upload')),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: querySnapshot.data?.docs.length,
                  itemBuilder: (context, index) {
                    final game = querySnapshot.data?.docs;
                    return Card(
                        child: ListTile(
                      tileColor: Colors.lightGreen,
                      textColor: Colors.white,
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(360), //or 15.0
                        child: Image(
                            image: NetworkImage(game![index]["image"]),
                            height: 75,
                            width: 75),
                      ),
                      title: Text(game[index]["name"]),
                      subtitle: Text(
                        game[index]["type"],
                      ),
                      trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            FirebaseFirestore.instance.collection("game").doc(querySnapshot.data?.docs[index].reference.id.toString()).delete();
                          }),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  runGame(game[index]["game"]))),
                    ));
                  },
                ))
              ]);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
