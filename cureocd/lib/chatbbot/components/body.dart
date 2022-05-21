import 'package:flutter/material.dart';
import '../../widgets/CustomButton.dart';
import '../quizscreens/main.dart';
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
              "Take our short test to find out if you are living with Obsessive compulsive disorder.",
              // ignore: unnecessary_const
              style: const TextStyle(
                fontSize: 15,
                // color: Color.fromARGB(255, 0, 163, 173),
                color: Color.fromARGB(255, 107, 102, 102),
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
                CustomButton(
                  text: 'Start my journey',
                  accentColor: Colors.white,
                  mainColor: Color.fromARGB(255, 0, 163, 173),
                  onpress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MyApp();
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
