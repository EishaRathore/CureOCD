import 'package:cureocd/chatbbot/chatbot.dart';
import 'package:cureocd/chatbbot/common/theme_helper.dart';
import 'package:cureocd/chatbbot/ui/shared/color.dart';
//import 'package:cureocd/chatbbot/widgets/disco_button.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/CustomButton.dart';

// String username = 'User';
// String email = 'user@example.com';
// late String messageText;
// late FirebaseUser loggedInUser;

// ignore: must_be_immutable
class ResultScreen extends StatefulWidget {
  int score;

  ResultScreen(this.score, {Key? key}) : super(key: key);
  //final auth = FirebaseAuth.instance;
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late String _resultPrnt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: ThemeHelper.fullScreenBgBoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            quizResultInfo(),
            bottomButtons(),
          ],
        ),
      ),
    );
  }

  Widget bottomButtons() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            text: 'Close',
            accentColor: Colors.white,
            mainColor: Color.fromARGB(255, 0, 163, 173),
            onpress: () {
              Navigator.pushNamed(context, '/homeMain');
            },
          ),

          // CustomButton(
          //   text: 'Repeat YBOCS-test',
          //   accentColor: Colors.white,
          //   mainColor: Color.fromARGB(255, 0, 163, 173),
          //   onpress: () {
          //     Navigator.pushNamed(context, '/chatbotScreen');
          //   },
          // ),

          // DiscoButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/homeMain');
          //   },
          //   child: const Text(
          //     "Close",
          //     style: TextStyle(
          //         color: Color.fromARGB(255, 0, 163, 173), fontSize: 17),
          //   ),
          //   width: 150,
          //   height: 50,
          // ),
          // DiscoButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => const chatbotScreen(),
          //         ));
          //   },
          //   child: const Text(
          //     "Repeat Y-BOCS test",
          //     style: TextStyle(color: Colors.white, fontSize: 16),
          //   ),
          //   width: 160,
          //   height: 60,
          //   isActive: true,
          // ),
        ],
      ),
    );
  }

  Widget quizResultInfo() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      //backgroundColor: AppColor.pripmaryColor,
      // body:
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/celebration.gif',
            fit: BoxFit.contain,
            height: 180.0,
          ),

          // const SizedBox(
          //   width: double.infinity,
          //child:
          Text(
            "Your Score:",
            textAlign: TextAlign.center,
            style: TextStyle(
              //   color: Colors.white,
              color: Color.fromARGB(255, 0, 163, 173),

              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          // ),
          // const SizedBox(
          //   height: 10.0,
          // ),
          Text(
            "${widget.score} / 40",
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text((() {
            if (widget.score >= 0 && widget.score <= 13) {
              _resultPrnt = "Symptoms: Mild";
              return _resultPrnt;
            } else if (widget.score >= 14 && widget.score <= 25) {
              _resultPrnt = "Symptoms: Moderate";
              return _resultPrnt;
            } else if (widget.score >= 26 && widget.score <= 34) {
              _resultPrnt = "Symptoms: Moderate-severe";
              return _resultPrnt;
            } else {
              _resultPrnt = "Symptoms: Severe";
              return _resultPrnt;
            }
          })(),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 163, 173))),
          const SizedBox(
            height: 20.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const chatbotScreen(),
                  ));
            },
            shape: const StadiumBorder(),
            color: AppColor.secondaryColor,
            padding: const EdgeInsets.all(18.0),
            child: const Text(
              "Start VR therapy",
              style: const TextStyle(color: Colors.white),
            ),
            highlightColor: const Color.fromARGB(255, 0, 163, 173),
            hoverColor: const Color.fromARGB(186, 0, 164, 173),
          ),
        ],
      ),
    );
  }
}
