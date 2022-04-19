import 'package:cureocd/chatbbot/chatbot.dart';
import 'package:cureocd/chatbbot/common/theme_helper.dart';
import 'package:cureocd/chatbbot/ui/shared/color.dart';
import 'package:cureocd/chatbbot/widgets/disco_button.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

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
          DiscoButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Close",
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 163, 173), fontSize: 17),
            ),
            width: 150,
            height: 50,
          ),
          DiscoButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const chatbotScreen(),
                  ));
            },
            child: const Text(
              "Repeat Y-BOCS test",
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            width: 200,
            height: 60,
            isActive: true,
          ),
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
          const SizedBox(
            width: double.infinity,
            child: const Text(
              "You Score is",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score} / 40",
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text((() {
            if (widget.score >= 0 && widget.score <= 13) {
              _resultPrnt = "mild symptoms";
              return _resultPrnt;
            } else if (widget.score >= 14 && widget.score <= 25) {
              _resultPrnt = "moderate symptoms";
              return _resultPrnt;
            } else if (widget.score >= 26 && widget.score <= 34) {
              _resultPrnt = "moderate-severe symptoms";
              return _resultPrnt;
            } else {
              _resultPrnt = "severe symptoms";
              return _resultPrnt;
            }
          })()),
          const SizedBox(
            height: 100.0,
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
              "Reapeat the Y-BOCS test",
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
