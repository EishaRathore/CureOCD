// import 'package:chat_app/pages/chat.dart';
import 'package:cureocd/Homemain.dart';
import 'package:cureocd/chatbbot/chatbot.dart';
import 'package:flutter/material.dart';
import 'pages/chatterScreen.dart';
import 'pages/login.dart';
import 'pages/signup.dart';
import 'pages/aboutUs.dart';
import 'splash.dart';

const kBackgroundColor = Color.fromARGB(255, 255, 255, 255);
//const kPrimaryColor = Color.fromARGB(255, 253, 253, 253);
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        // primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      title: 'CureOCD',
      initialRoute: '/',
      routes: {
        //  '/': (context) => ChatterHome(),
        '/': (context) => const SplashScreen(),
        '/login': (context) => ChatterLogin(),
        '/signup': (context) => ChatterSignUp(),
        '/chat': (context) => ChatterScreen(),
        '/aboutUs': (context) => AboutUs(),
        '/homeMain': (context) => HomeMain(),
        '/chatbot': (BuildContext context) => const chatbotScreen(),
        // '/aboutUs': (context) => AboutUsScreen(),

        // '/chats':(context)=>ChatterScreen()
      },
    );
  }
}
