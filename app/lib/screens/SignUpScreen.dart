import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/models/userModel.dart';
import 'package:pohnpeian_language_app/screens/Home.dart';
import 'loginPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pohnpeian_language_app/services/auth.dart';

/*class User {
  // Holds user data, just holds name as of right now
  String id;
  final String name;
  final String pw;
  final String email;
  // final int progress
  //This will hold the user's progress. Change to array.
  User({
    this.id = 'userBase',
    required this.name,
    required this.pw,
    required this.email,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'pw': pw,
        'email': email,
      };
}All Commented out code will be gone through by commitee to decide how to continue*/

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static const String _title = "Welcome to Pweek";
  static const Color a1 = Color.fromRGBO(117, 178, 221, .5);
  static const Color a2 = Color.fromRGBO(117, 178, 221, .75);
  static const Color a3 = Color.fromRGBO(117, 178, 221, 1.0);
  static const Color b1 = Color.fromRGBO(45, 211, 112, .5);
  static const Color b2 = Color.fromRGBO(45, 211, 112, .75);
  static const Color b3 = Color.fromRGBO(45, 211, 112, 1.0);
  static const Color c1 = Color.fromRGBO(38, 77, 105, .5);
  static const Color c2 = Color.fromRGBO(38, 77, 105, .75);
  static const Color c3 = Color.fromRGBO(38, 77, 105, 1.0);
  static const Color d = Color.fromRGBO(146, 148, 156, 1.0);
  static const background = Color.fromARGB(219, 39, 183, 196);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: (b3),
            title: const Text(_title),
            centerTitle: true),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("Assets/Images/Palm-Tree.jpg"),
                  fit: BoxFit.cover),
            ),
            child: const SignUpPageState()),
      ),
    );
  }
}

class SignUpPageState extends StatefulWidget {
  const SignUpPageState({Key? key}) : super(key: key);

  @override
  State<SignUpPageState> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPageState> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  static const a1 = Color.fromRGBO(117, 178, 221, .5);
  static const a2 = Color.fromRGBO(117, 178, 221, .75);
  static const a3 = Color.fromRGBO(117, 178, 221, 1.0);
  static const b1 = Color.fromRGBO(45, 211, 112, .5);
  static const b2 = Color.fromRGBO(45, 211, 112, .75);
  static const b3 = Color.fromRGBO(45, 211, 112, 1.0);
  static const c1 = Color.fromRGBO(38, 77, 105, .5);
  static const c2 = Color.fromRGBO(38, 77, 105, .75);
  static const c3 = Color.fromRGBO(38, 77, 105, 1.0);
  static const d = Color.fromRGBO(146, 148, 156, 1.0);
  static const background = Color.fromARGB(219, 39, 183, 196);

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      //to fill with error message
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(40, 80, 40, 0),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 45,
                  ),
                )),
            Container(
              padding: const EdgeInsets.all(25),
              color: Colors.transparent,
            ),
            Container(
              padding: const EdgeInsets.all(0),
              color: Colors.white,
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              color: Colors.transparent,
            ),
            Container(
              padding: const EdgeInsets.all(0),
              color: Colors.white,
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password ',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              color: Colors.transparent,
            ),
            Container(
              padding: const EdgeInsets.all(0),
              color: Colors.white,
              child: TextField(
                obscureText: true,
                controller: cpasswordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              color: Colors.transparent,
            ),
            Container(
              padding: const EdgeInsets.all(0),
              color: Colors.white,
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              color: Colors.transparent,
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: ElevatedButton(
                  key: const Key('signInButton'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: (b3),
                    textStyle: const TextStyle(
                      color: (b3),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage())),
                  child: const Text('Already Have an Account? Sign in'),
                )),
            ElevatedButton(
              onPressed: () async {
                if (passwordController.text != cpasswordController.text) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Passwords do not match.'),
                      backgroundColor: Colors.red,
                    ),
                  );
                  return;
                }

                try {
                  await createUserWithEmailAndPassword();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                } on FirebaseAuthException catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(e.message!),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: const Text('Sign Up'),
            ),
          ],
        ));
  }
}
