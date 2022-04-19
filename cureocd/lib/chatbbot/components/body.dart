import 'package:cureocd/chatbbot/screens/quizz_screen.dart';
import 'package:flutter/material.dart';
import 'background.dart';
import 'button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.02),
            const Text(
              "   Lets begin with a few questions to identify your level of OCD.",
              // ignore: unnecessary_const
              style: const TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 0, 163, 173),
              ),
              textAlign: TextAlign.center,
            ),
            // SizedBox(height: size.height * 0.00),
            Image.asset(
              'assets/ques.png',
              height: size.height * 0.50,
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //  SizedBox(width: size.width * 0.04),

                RoundedButton(
                  text: "START MY JOURNEY",
                  //  textColor: Colors.black,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const QuizzScreen();
                          //return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
