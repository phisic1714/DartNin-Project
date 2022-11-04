
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_3/main.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  late String email;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        backgroudImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Reset Password'),
          ),
          body: Column(
            children: [
              backgroudImage(),
              Image.asset("assets/6.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    icon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    iconColor: Colors.white,
                    hintText: 'x@x.com',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      email = value.trim();
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    child: Text('Send Request'),
                    onPressed: () {
                      auth.sendPasswordResetEmail(email: email);
                      Navigator.of(context).pop();
                    },
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        side: MaterialStateProperty.all(const BorderSide(
                          color: Colors.white,
                          width: 6,
                        ))),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

Widget backgroudImage() {
  return ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      colors: [Colors.black, Colors.black12],
      begin: Alignment.bottomCenter,
      end: Alignment.center,
    ).createShader(bounds),
    blendMode: BlendMode.darken,
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/mario.png"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        ),
      ),
    ),
  );
}
=======
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_3/main.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  late String email;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        backgroudImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Reset Password'),
          ),
          body: Column(
            children: [
              backgroudImage(),
              Image.asset("assets/nin.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    icon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    iconColor: Colors.white,
                    hintText: 'x@x.com',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      email = value.trim();
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    child: Text('Send Request'),
                    onPressed: () {
                      auth.sendPasswordResetEmail(email: email);
                      Navigator.of(context).pop();
                    },
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        side: MaterialStateProperty.all(const BorderSide(
                          color: Colors.white,
                          width: 6,
                        ))),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

Widget backgroudImage() {
  return ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      colors: [Colors.black, Colors.black12],
      begin: Alignment.bottomCenter,
      end: Alignment.center,
    ).createShader(bounds),
    blendMode: BlendMode.darken,
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/mario.png"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        ),
      ),
    ),
  );
}

