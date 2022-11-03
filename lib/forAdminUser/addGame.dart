import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import '../widget Always Use/drawer.dart';
import '../home.dart';
import '../runGame.dart';

class addgame extends StatefulWidget {
  const addgame({Key? key}) : super(key: key);

  @override
  State<addgame> createState() => _addgame();
}

class _addgame extends State<addgame> {
  @override
  late String search = '';
  Widget build(
    BuildContext context,
  ) {   
    

    return Scaffold(
        appBar: AppBar(
          title: const Text('Games'),
          actions: [
            IconButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home())),
                icon: Icon(Icons.home))
          ],
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('user').doc('PkW9mb2QxKRCiQ1hpc1ewI0Zg853').collection('game').snapshots(),
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot> querySnapshot) {
            if (querySnapshot.hasError) {
              return Center(child: (Text("Error")));
            } else if (querySnapshot.hasData) {

              return Column(children: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Game Name',
              hintText: "Name...",
              hintStyle: TextStyle(color: Colors.black)),
            style: TextStyle(color: Colors.black),
            onChanged: (value) {
              // Update the key when the value changes.
              setState(() => search = value);
            },
          ),
        ),Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Game URL',
              hintText: "URL...",
              hintStyle: TextStyle(color: Colors.black)),
            style: TextStyle(color: Colors.black),
            onChanged: (value) {
              // Update the key when the value changes.
              setState(() => search = value);
            },
          ),
        ),Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField( 
            decoration: InputDecoration(
               labelText: 'Image URL',
              hintText: "URL...",
              hintStyle: TextStyle(color: Colors.black)),
            style: TextStyle(color: Colors.black),
            onChanged: (value) {
              // Update the key when the value changes.
              setState(() => search = value);
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),Expanded(child : ListView.builder(
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
                    subtitle: Text(game[index]["type"],),
                    trailing: IconButton(icon: Icon(Icons.star_border), onPressed: (){
                      //logic to open POPUP window
                  }),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                runGame(game[index]["game"]))),
                  ));
                },
              ))]);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
