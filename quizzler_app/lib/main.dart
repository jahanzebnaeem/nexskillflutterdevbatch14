import 'package:flutter/material.dart';

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
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade800,
          title: Text(
            "Quizzler",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Questions will come here!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {},
                    child: Text(
                      "True",
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {},
                  child: Text(
                    "False",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
              // TODO: Add list for answers
            ],
          ),
        ),
      ),
    );
  }
}
