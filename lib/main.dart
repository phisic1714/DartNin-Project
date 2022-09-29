import 'package:flutter/material.dart';
import 'package:flutter_application_3/homepage.dart';
import 'package:flutter_application_3/login.dart';
import 'package:flutter_application_3/register.dart';
import 'package:flutter_application_3/addbook.dart';
import 'package:flutter_application_3/book.dart';
import 'package:flutter_application_3/showdetail.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp2());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return buildMaterialApp();
  }

  MaterialApp buildMaterialApp() {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
         '/register': (context) => RegisterPage(),
         '/homepage':(context) => Homepage(),
         '/addbook':(context) => AddBookPage(),
         '/book':(context) => BookPage()
      },
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firestore Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
      '/': (context) => BookPage(),
      '/addbook': (context) => AddBookPage(),
      '/showdetail': (context) => BookDetail('')
    },
  );
}

