// import 'package:chat_app/pages/chat.dart';
import 'package:chat_app/pages/login.dart';
import 'package:chat_app/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/pages/chatterScreen.dart';
import 'pages/splash.dart';
import 'pages/aboutUs.dart';

void main() => runApp(ChatterApp());

class ChatterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VEXPOcd',

      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      // home: ChatterHome() 0B1968,
      initialRoute: '/',
      routes: {
        '/': (context) => ChatterHome(),
        '/login': (context) => ChatterLogin(),
        '/signup': (context) => ChatterSignUp(),
        '/chat': (context) => ChatterScreen(),
        '/aboutUs': (context) => AboutUs(),
        // '/aboutUs': (context) => AboutUsScreen(),

        // '/chats':(context)=>ChatterScreen()
      },
    );
  }
}
