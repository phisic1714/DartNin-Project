import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '../widget Always Use/drawer.dart';
import '../home.dart';
import '../runGame.dart';

class game {
  String image;
  String name;
  String gamelink;
  game({
    required this.name,
    required this.image,
    required this.gamelink,
  });

  static game fromJson(Map<String, dynamic> json) => game(
        image: json['image'],
        name: json['name'],
        gamelink: json['game'],
      );
}

class NesMenu extends StatefulWidget {
  const NesMenu({Key? key}) : super(key: key);

  @override
  State<NesMenu> createState() => _NesMenu();
}

class _NesMenu extends State<NesMenu> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Nintendo Entertainment System'),
          actions: [
            IconButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home())),
                icon: Icon(Icons.home))
          ],
        ),
        body: StreamBuilder<List<game>>(
          stream: readgames(),
          builder: (
            context,
            snapshot,
          ) {
            if (snapshot.hasError) {
              return Text("Error");
            } else if (snapshot.hasData) {
              final games = snapshot.data!;
              return ListView(
                children: games.map(buildGame).toList(),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }

  Widget buildGame(game game) => ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(0), //or 15.0
          child: Image(image: NetworkImage(game.image),height: 70.0,
        width: 70.0),
        ),
        title: Text(game.name),
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => runGame(game.gamelink))),
      );

  Stream<List<game>> readgames() => FirebaseFirestore.instance
      .collection('game')
      .where('type', isEqualTo: 'nes')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => game.fromJson(doc.data())).toList());
}
