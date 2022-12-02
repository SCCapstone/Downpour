import 'package:flutter/material.dart';
import 'loginPage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static const String _title = "We Need an App Title";
  static const Color a1 = Color.fromRGBO(117, 178, 221, .5);
  static const Color a2 = Color.fromRGBO(117, 178, 221, .75);
  static const Color a3 = Color.fromRGBO(117, 178, 221, 1.0);
  static const Color b1 = Color.fromRGBO(45, 211, 111, .5);
  static const Color b2 = Color.fromRGBO(45, 211, 111, .75);
  static const Color b3 = Color.fromRGBO(45, 211, 111, 1.0);
  static const Color c1 = Color.fromRGBO(38, 77, 105, .5);
  static const Color c2 = Color.fromRGBO(38, 77, 105, .75);
  static const Color c3 = Color.fromRGBO(38, 77, 105, 1.0);
  static const Color d = Color.fromRGBO(146, 148, 156, 1.0);
  static const Color background = Color.fromRGBO(255, 100, 100, 1.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: (b3), title: const Text(_title), centerTitle: true),
        body:
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("app/Assets/Images/Palm-Tree.jpg"),fit: BoxFit.cover),
          ),
        child: const SignUpPageState()
      ),
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
  static const b1 = Color.fromRGBO(45, 211, 111, .5);
  static const b2 = Color.fromRGBO(45, 211, 111, .75);
  static const b3 = Color.fromRGBO(45, 211, 111, 1.0);
  static const c1 = Color.fromRGBO(38, 77, 105, .5);
  static const c2 = Color.fromRGBO(38, 77, 105, .75);
  static const c3 = Color.fromRGBO(38, 77, 105, 1.0);
  static const d = Color.fromRGBO(146, 148, 156, 1.0);
  static const background = Color.fromRGBO(255, 100, 100, 1.0);

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
                  labelText: 'User Name',
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
                  labelText: 'Password',
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
                  child: Text('Sign Up!'),
                  onPressed: () => Navigator.push(
                      //Map <String,dynamic> data= {"Field1": nameController, "Field2": passwordController, "Field3": cpasswordController, "Field4": emailController};
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage())),
                ))
          ],
        ));
  }
}