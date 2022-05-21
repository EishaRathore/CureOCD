import 'package:cureocd/Homemain.dart';
import 'package:cureocd/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final firestore = Firestore.instance;
String username = 'User';
String email = 'user@example.com';
//late String messageText;
late FirebaseUser loggedInUser;

class Result extends StatelessWidget {
  Result(this.resultScore, this.resetHandlar);
  final int resultScore;
  final VoidCallback resetHandlar;
  final _auth = FirebaseAuth.instance.currentUser();
  Future<bool> doesNameAlreadyExist(String email) async {
    final QuerySnapshot result = await Firestore.instance
        .collection('quizscore')
        .where('senderemail', isEqualTo: email)
        .limit(1)
        .getDocuments();
    final List<DocumentSnapshot> documents = result.documents;
    return documents.length == 1;
  }

  String get resultPhrase {
    firestore.collection('quizscore').add({
      'sender': username,
      'quizscore': resultScore,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'senderemail': email,
    });

    String resultText;
    if (resultScore >= 0 && resultScore <= 13) {
      resultText = '\nOCD level: Mild Result Score:$resultScore';
    } else if (resultScore >= 14 && resultScore <= 25) {
      resultText = '\nOCD level: Moderate Result Score:$resultScore';
    } else if (resultScore >= 26 && resultScore <= 34) {
      resultText = '\nOCD level: Moderate-severe Result Score:$resultScore';
    } else {
      resultText = '\nOCD level: Severe Result Score:$resultScore';
    }
    const SizedBox(height: 20.0);
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          // getAppBar(),
          const SizedBox(
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
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 163, 173)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextButton(
            child: const Text(
              'Start VR Therapy',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            // textColor: Colors.blue,
            onPressed: resetHandlar,
          ),
          // CustomButton(
          //   accentColor: const Color.fromARGB(255, 255, 255, 255),
          //   mainColor: const Color.fromARGB(255, 0, 163, 173),
          //   onpress: () {},
          //   text: 'Start VR Therapy',
          // ),
          const SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
