import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(ChattyChat());
}

class ChattyChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      // home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen()
      },
    );
  }
}
