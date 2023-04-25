import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/models/userModel.dart';
import 'loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pohnpeian_language_app/services/auth.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static const String _title = "Welcome to Pweek";

  static const Color b3 = Color.fromRGBO(45, 211, 112, 1.0);

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

  static const b3 = Color.fromRGBO(45, 211, 112, 1.0);

  // Create a new user with Email and password using text inside the
  // Email and password controllers
  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      //to fill with error message
    }
  }

  // Returns true if email address is in use by checking in Firebase.
  Future<bool> checkIfEmailInUse() async {
    try {
      final list = await FirebaseAuth.instance
          .fetchSignInMethodsForEmail(emailController.text);
      if (list.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      return true;
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
                key: const Key("signup_namefield"),
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
                key: const Key("signup_passwordfield1"),
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
                key: const Key("signup_passwordfield2"),
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
                key: const Key("signup_emailfield"),
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
            Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: (b3),
                  ),
                  child: const Text('Sign Up!'),
                  onPressed: () {
                    if (passwordController.text.length < 6) {
                      // Toast if password is too short
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                              "Passwords must have at least 6 characters.")));
                    } else if (passwordController.text ==
                        cpasswordController.text) {
                      checkIfEmailInUse().then((emailInUse) => {
                            if (emailInUse)
                              {
                                // Toast if email is already in use
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                            Text("Email is already in use.")))
                              }
                            else
                              {
                                createUserWithEmailAndPassword().then(
                                  (value) {
                                    UserPreferences.myUser.name =
                                        nameController.text;
                                    UserPreferences.myUser.saveData();
                                    Auth()
                                        .signInWithEmailAndPassword(
                                            email: emailController.text.trim(),
                                            password:
                                                passwordController.text.trim())
                                        .then((value) {
                                      UserPreferences.myUser.saveData();
                                    }).then((value) {
                                      Auth().signOut();
                                    });
                                  },
                                ).then(
                                  (value) => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginPage()))
                                  },
                                )
                              }
                          });
                    } else {
                      // Toast if passwords do not match
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Passwords do not match.")));
                    }
                  },
                ))
          ],
        ));
  }
}
