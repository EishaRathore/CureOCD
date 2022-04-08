import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:vexpocd/chatbot/constants.dart';
import 'package:vexpocd/chatbot/controllers/question_controller.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              const Spacer(),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: kSecondaryColor),
              ),
              const Spacer(flex: 1,),
              Text(
                "${_qnController.result}/${40}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kSecondaryColor),
              ),
             // const Spacer(),
              Text(
                _qnController.resultPrint(),
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kSecondaryColor),
              ),
            ],
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              //title: const Text(''),// You can add title here
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.grey),
                onPressed: () => Navigator.popAndPushNamed(context, '/chatbot'),
              ),
              title: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/log.png',
                      fit: BoxFit.contain,
                      height: 40,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: GradientText(
                        'VexpOcd',
                        style: const TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        colors: [
                          const Color.fromARGB(255, 0, 118, 197),
                          const Color.fromARGB(255, 197, 194, 194),
                          // const Color.fromARGB(255, 107, 4, 110),
                          const Color.fromARGB(255, 0, 118, 197),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              backgroundColor:
                  Colors.blue.withOpacity(0.3), //You can make this transparent
              elevation: 0.0, //No shadow
            ),
          ),
        ],
      ),
    );
  }
}
