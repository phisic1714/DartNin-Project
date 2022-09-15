import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Firebase Authen App",
              style: TextStyle(color: Colors.white)),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  auth.signOut();
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.exit_to_app))
          ],
        ),
        body: Center(
            child:
                Column(mainAxisSize: MainAxisSize.min, children: const <Widget>[
          Text("Hello", style: TextStyle(fontSize: 26)),
        ])));
  }
}
