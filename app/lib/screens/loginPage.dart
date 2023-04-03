import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/screens/Home.dart';
import 'SignUpScreen.dart';

class PasswordFieldValidator {
  static String validate(String value) {
    if (value.isEmpty) {
      return value.isEmpty ? 'Password can\'t be empty' : '0';
    }
    if (value.contains(" ")) {
      return value.contains(" ") ? 'Password can\'t contain a space' : '0';
    }
    return '0';
  }
}

class EmailFieldValidator {
  static String validate(String value) {
    if (value.isEmpty) {
      return value.isEmpty ? 'Email can\'t be empty' : '0';
    }
    if (value.contains(" ")) {
      return value.contains(" ") ? 'Email can\'t contain a space' : '0';
    }
    return '0';
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String _title = "Welcome to Pweek";
  static const Color a = Color.fromRGBO(45, 211, 112, .5);
  static const Color b = Color.fromRGBO(45, 211, 112, .75);
  static const Color c = Color.fromRGBO(45, 211, 112, 1.0);
  static const Color d = Color.fromARGB(255, 65, 213, 236);
  static const Color background = Color.fromARGB(255, 30, 216, 240);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: (c), title: const Text(_title), centerTitle: true),
        body: const LoginPageState(),
        backgroundColor: (background),
      ),
    );
  }
}

class LoginPageState extends StatefulWidget {
  const LoginPageState({Key? key}) : super(key: key);

  @override
  State<LoginPageState> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPageState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //The login button color
  static const Color a = Color.fromRGBO(45, 211, 112, 1.0);
  static const Color b = Color.fromRGBO(45, 211, 112, 1.0);
  //Sign up button color
  static const Color c = Color.fromRGBO(45, 211, 112, 1.0);
  static const Color d = Color.fromRGBO(45, 211, 112, 1.0);

  @override
  Widget build(BuildContext context) {
    Future signIn() async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 40, 40, 50),
      child: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                "Log In",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 45),
              )),
          Container(
            padding: const EdgeInsets.all(25),
            color: Colors.transparent,
          ),
          Container(
              padding: const EdgeInsets.all(0),
              color: Colors.white,
              child: TextFormField(
                  key: const Key('emailField'),
                  controller: emailController,
                  validator: (value) => EmailFieldValidator.validate(value!),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black),
                  ))),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.transparent,
          ),
          Container(
              padding: const EdgeInsets.all(0),
              color: Colors.white,
              child: TextFormField(
                  key: const Key('passwordField'),
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) => PasswordFieldValidator.validate(value!),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password ',
                    labelStyle: TextStyle(color: Colors.black),
                  ))),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.transparent,
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: (b),
                  textStyle: const TextStyle(
                    color: (b),
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage())),
                child: const Text("Don't Have an Account? Sign up!"),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.transparent,
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: (b),
                ),
                child: Text('Log In'),
                onPressed: signIn,
              ))
        ],
      ),
    );
  }
}
