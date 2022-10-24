import 'package:flutter/material.dart';
import 'WelcomeScreen.dart';
import 'SignUpScreen.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);


  static const String _title = "Coolest App Available Inc.";
  static const Color a = Color.fromRGBO(255, 50, 50, 1.0);
  static const Color b = Color.fromRGBO(255, 50, 50, .75);
  static const Color c = Color.fromRGBO(255, 50, 50, .5);
  static const Color d = Color.fromRGBO(255, 50, 50, .25);
  static const Color background = Color.fromRGBO(255, 100, 100, 1.0);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: (c),
            title: const Text(_title),
            centerTitle: true),
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
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  static const Color a = Color.fromRGBO(255, 50, 50, 1.0);
  static const Color b = Color.fromRGBO(255, 50, 50, .75);
  static const Color c = Color.fromRGBO(255, 50, 50, .5);
  static const Color d = Color.fromRGBO(255, 50, 50, .25);

  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.all(10),
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
              padding: const EdgeInsets.all(10),
              color: Colors.transparent,
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(450, 0,450, 0),
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
                      MaterialPageRoute(builder: (context) => const SignUpPage())
                  ),
                  child: const Text("Don't Have an Account? Sign up!"),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.transparent,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0,0,10,0),
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: (b),
                ),
                child: Text('Log In'),
                onPressed: () => 
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WelcomePage())
                    ),
              )
            )


          ],
        ));
  }
}
