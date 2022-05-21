import 'package:cureocd/Homemain.dart';
import 'package:cureocd/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

class Result extends StatelessWidget {
  late final int resultScore;
  late final VoidCallback resetHandlar;

  Result(this.resultScore, this.resetHandlar);
  String get resultPhrase {
    String resultText;
    if (resultScore >= 0 && resultScore <= 13) {
      resultText = '\nSymptoms: Mild Result Score:$resultScore';
    } else if (resultScore >= 14 && resultScore <= 25) {
      resultText = '\nSymptoms: Moderate Result Score:$resultScore';
    } else if (resultScore >= 26 && resultScore <= 34) {
      resultText = '\nSymptoms: Moderate-severe Result Score:$resultScore';
    } else {
      resultText = '\nSymptoms: Severe Result Score:$resultScore';
    }
    SizedBox(height: 20.0);
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          // getAppBar(),
          SizedBox(
            height: 40.0,
          ),
          Image.asset(
            'assets/celebration.gif',
            fit: BoxFit.contain,
            height: 230.0,
          ),
          Text(
            resultPhrase,
            style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 163, 173)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20.0,
          ),
          CustomButton(
            accentColor: const Color.fromARGB(255, 255, 255, 255),
            mainColor: const Color.fromARGB(255, 0, 163, 173),
            onpress: () {},
            text: 'Start VR Therapy',
          ),
          const SizedBox(height: 40.0),

          // CustomButton(
          //   accentColor: const Color.fromARGB(255, 255, 255, 255),
          //   mainColor: const Color.fromARGB(255, 0, 163, 173),
          //   onpress: () {
          //     Navigator.pushReplacementNamed(context, '/homeMain');
          //   },
          //   text: 'Close',
          // )
        ],
      ),
    );
  }

  // getAppBar() {
  //   return AppBar(
  //     backgroundColor: Color.fromARGB(255, 0, 163, 173),
  //     elevation: 0,
  //     leading: GestureDetector(
  //       onTap: () {
  //         navService.pushNamed('/homeMain');
  //       },
  //       child: const Padding(
  //         padding: EdgeInsets.only(top: 20, left: 10),
  //         child: Text(
  //           "Close",
  //           style: TextStyle(
  //               fontSize: 16,
  //               fontWeight: FontWeight.w600,
  //               color: Color.fromARGB(255, 255, 255, 255)),
  //         ),
  //       ),
  //     ),
  //     // title: const Text("Join a Meeting"),
  //   );
  // }
}
