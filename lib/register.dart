import 'package:flutter_application_3/main.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formstate = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      backgroudImage(),
      Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Form(
          key: _formstate,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/6.png"),
              buildEmailField(),
              buildPasswordField(),
              buildRegisterButton(),
            ],
          ),
        ),
      ),
    ]);
  }

  ElevatedButton buildRegisterButton() {
    return ElevatedButton(
      child: const Text('Register'),
      onPressed: () async {
        print('Register New Account');
        if (_formstate.currentState!.validate()) print(email.text);
        print(password.text);
        final _user = await auth.createUserWithEmailAndPassword(
            email: email.text.trim(), password: password.text.trim());
        _user.user!.sendEmailVerification();
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const LoginPage(
                      title: '',
                    )));
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

  TextFormField buildPasswordField() {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      controller: password,
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

  TextFormField buildEmailField() {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      controller: email,
      validator: (value) {
        if (value!.isEmpty)
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
        hintText: 'x@x.com',
        hintStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );
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
}
