import 'package:flutter/material.dart';
import 'package:flutter_application_3/homepage.dart';
import 'package:flutter_application_3/login.dart';
import 'package:flutter_application_3/register.dart';
import 'package:flutter_application_3/addbook.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
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
         '/addbook':(context) => AddBookPage()
      },
    );
  }
}
