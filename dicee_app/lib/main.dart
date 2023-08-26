import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Dicee',
          ),
        ),
        body: DiceeApp(),
      ),
    );
  }
}

class DiceeApp extends StatefulWidget {
  const DiceeApp({super.key});

  @override
  State<DiceeApp> createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  int leftDiceImage = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 4.0, 8.0),
              child: GestureDetector(
                onTap: () {
                  int randomVal = Random().nextInt(6) + 1;
                  // print(randomVal);
                  setState(() {
                    leftDiceImage = randomVal;
                  });
                  // print("Left button pressed with no $leftDiceImage");
                },
                child: Image(
                  image: AssetImage("images/dice$leftDiceImage.png"),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(4.0, 8.0, 8.0, 8.0),
              child: Image(
                image: AssetImage("images/dice1.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
