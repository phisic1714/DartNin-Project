import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_3/register.dart';
import 'package:flutter_application_3/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_3/resetPassword.dart';
import 'Allgame.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FireStore Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: FirebaseAuth.instance.currentUser == null
          ? LoginPage(title: 'Flutter login Page')
          : Allgame(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required String title}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formstate = GlobalKey<FormState>();
  String? email;
  String? password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return Stack(children: <Widget>[
      backgroudImage(),
      Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _formstate,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/nin.png"),
              emailTextFormField(),
              passwordTextFormField(),
              loginButton(),
              registerButton(context),
              forgotPassword(context)
            ],
          ),
        ),
      ),
    ]);
  }

  ElevatedButton registerButton(BuildContext context) {
    return ElevatedButton(
      // ignore: prefer_const_constructors
      child: Text('Register New Account'),
      onPressed: () {
        print('Go to Register page');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RegisterPage()));
      },
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(Colors.black),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          side: MaterialStateProperty.all(const BorderSide(
            color: Colors.white,
            width: 6,
          ))),
    );
  }

  ElevatedButton loginButton() {
    return ElevatedButton(
      child: Text(
        'Login',
      ),
      onPressed: () async {
        if (_formstate.currentState!.validate()) {
          print('Valid Form');
          _formstate.currentState!.save();
          try {
            await auth
                .signInWithEmailAndPassword(email: email!, password: password!)
                .then((value) {
              if (value.user!.emailVerified) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Login Pass")));
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home()));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Please verify email")));
              }
            }).catchError((reason) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Login or Password Invalid")));
            });
          } on FirebaseAuthException catch (e) {
            if (e.code == 'user-not-found') {
              print('No user found for that email.');
            } else if (e.code == 'wrong-password') {
              print('Wrong password provided for that user.');
            }
          }
        } else
          print('Invalid Form');
      },
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(Colors.black),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          side: MaterialStateProperty.all(const BorderSide(
            color: Colors.white,
            width: 6,
          ))),
    );
  }

  TextFormField passwordTextFormField() {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      onSaved: (value) {
        password = value!.trim();
      },
      validator: (value) {
        if (value!.length < 8)
          return 'Please Enter more than 8 Character';
        else
          return null;
      },
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        icon: Icon(
          Icons.vpn_key,
          color: Colors.white,
        ),
      ),
    );
  }

  TextFormField emailTextFormField() {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      onSaved: (value) {
        email = value!.trim();
      },
      validator: (value) {
        if (!validateEmail(value!))
          return 'Please fill in E-mail field';
        else
          return null;
      },
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        labelText: 'E-mail',
        labelStyle: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
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
    );
  }

  bool validateEmail(String value) {
    RegExp regex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    return (!regex.hasMatch(value)) ? false : true;
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

            /// change this to your  image directory
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
          ),
        ),
      ),
    );
  }

  Widget forgotPassword(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 35,
        alignment: Alignment.center,
        child: TextButton(
            child: Text(
              "Forgot Password",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ResetPassword()),
                )));
  }
}
