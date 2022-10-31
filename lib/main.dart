import 'package:flutter/material.dart';
import 'package:flutter_application_3/home.dart';
import 'package:flutter_application_3/runGame.dart';
import 'package:firebase_core/firebase_core.dart';

import 'GameHistory/homeHistory.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: buildMaterialApp(),
    );
  }
}

MaterialApp buildMaterialApp() {
  return MaterialApp(
    title: 'FireStore Demo',
    theme: ThemeData(
      primarySwatch: Colors.amber,
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => home(),
    },
  );
}
