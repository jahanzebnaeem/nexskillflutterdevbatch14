import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text("My Card"),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              backgroundImage: NetworkImage(
                  "https://media.licdn.com/dms/image/D4D03AQHeEi2AZfyOJQ/profile-displayphoto-shrink_800_800/0/1673967544770?e=2147483647&v=beta&t=qyCXnCL9OsVdEqsR1N1msxAeZNwEp14P3EdpVFltxsE"),
              radius: 100.0,
            ),
            Text(
              "Jahanzeb Naeem",
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "CTO | TPM",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
