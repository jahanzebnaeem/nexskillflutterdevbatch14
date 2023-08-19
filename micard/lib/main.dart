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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage("images/mypic.jpeg"),
              radius: 100.0,
            ),
            Text(
              "Jahanzeb Naeem",
              style: TextStyle(
                fontFamily: "Pacifico",
                fontSize: 40.0,
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
            Divider(
              thickness: 5.0,
              indent: 100.0,
              endIndent: 100.0,
              height: 30.0,
              color: Colors.teal.shade700,
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
              padding: EdgeInsets.all(
                10.0,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 30.0,
                    color: Colors.teal.shade600,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    "1234567890",
                    style: TextStyle(
                      color: Colors.teal.shade600,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
              padding: EdgeInsets.all(
                10.0,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 30.0,
                    color: Colors.teal.shade600,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    "test@test.com",
                    style: TextStyle(
                      color: Colors.teal.shade600,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
