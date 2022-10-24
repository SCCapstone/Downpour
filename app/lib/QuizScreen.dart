import 'package:flutter/material.dart';

void  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const Color background = Color.fromARGB(255, 16, 82, 182);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz app',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('                   Take this short Quiz'),
          backgroundColor: background,
        ),
        body: const Quiz(),
      ),
    );
  }
}

class Quiz extends StatelessWidget {
  const Quiz({super.key});
  static const Color button = Color.fromARGB(255, 27, 105, 223);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
        const Text(
          " Trivia Question: Which animal does not appear in the Chinese zodiac?",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: button,
          ),
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const WrongScreen())),
          child: const Text('Dragon'),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: button,
          ),
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const WrongScreen())),
          child: const Text('Rabbit'),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: button,
          ),
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const WrongScreen())),
          child: const Text('Dog'),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: button,
          ),
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const RightScreen())),
          child: const Text('Lion'),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class WrongScreen extends StatefulWidget {
  const WrongScreen({Key? key}) : super(key: key);

  @override
  State<WrongScreen> createState() => _WrongScreenState();
}

class RightScreen extends StatefulWidget {
  const RightScreen({Key? key}) : super(key: key);

  @override
  State<RightScreen> createState() => _RightScreenState();
}

class _WrongScreenState extends State<WrongScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Answer'),
      ),
      body: const Center(
          child: Text(
        'Incorrect',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      )),
    );
  }
}

class _RightScreenState extends State<RightScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('The Answer'),
      ),
      body: const Center(
          child: Text(
        'Correct Answer!',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      )),
    );
  }
}
