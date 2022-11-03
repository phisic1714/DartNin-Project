import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import '../widget Always Use/drawer.dart';
import '../home.dart';
import '../runGame.dart';


class GBCMenu extends StatefulWidget {
  const GBCMenu({Key? key}) : super(key: key);

  @override
  State<GBCMenu> createState() => _GBCMenu();
}

class _GBCMenu extends State<GBCMenu> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Gameboy Color'),
          actions: [
            IconButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home())),
                icon: Icon(Icons.home))
          ],
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('game').where('type', isEqualTo: 'gbc').snapshots(),
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot> querySnapshot) {
            if (querySnapshot.hasError) {
              return Center(child: (Text("Error")));
            } else if (querySnapshot.hasData) {
              
              return ListView.builder(
                itemCount: querySnapshot.data?.docs.length,
                itemBuilder: (context, index) {
                  final game = querySnapshot.data?.docs;
                  return Card(child: ListTile(
         tileColor: Colors.lightGreen, 
         textColor: Colors.white,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(360), //or 15.0
          child: 
              Image(image: NetworkImage(game![index]["image"]), height: 75, width:75),
        ),
        title: Text(game[index]["name"]),
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => runGame(game[index]["game"]))),
      ));
                },
              );
            } else {
              
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }

}
