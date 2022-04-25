import 'package:cureocd/chatbbot/data/questions_example.dart';
import 'package:cureocd/chatbbot/screens/result_screen.dart';
import 'package:cureocd/chatbbot/ui/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:edge_alert/edge_alert.dart';

final firestore = Firestore.instance;
String username = 'User';
String email = 'user@example.com';
//late String messageText;
late FirebaseUser loggedInUser;

class QuizzScreen extends StatefulWidget {
  const QuizzScreen({Key? key}) : super(key: key);

  @override
  _QuizzScreenState createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {
  // ignore: non_constant_identifier_names
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next Question";
  bool answered = false;
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
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
   // getCurrentUser();
  }

  // void getCurrentUser() async {
  //   try {
  //     final user = await _auth.currentUser();
  //     if (user != null) {
  //       loggedInUser = user;
  //       setState(() {
  //         username = loggedInUser.displayName;
  //         email = loggedInUser.email;
  //       });
  //     }
  //   } catch (e) {
  //     EdgeAlert.show(context,
  //         title: 'Something Went Wrong',
  //         description: e.toString(),
  //         gravity: EdgeAlert.BOTTOM,
  //         icon: Icons.error,
  //         backgroundColor: const Color.fromARGB(255, 0, 163, 173));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: PageView.builder(
            controller: _controller!,
            onPageChanged: (page) {
              if (page == questions.length - 1) {
                setState(() {
                  btnText = "See Results";
                });
              }
              setState(() {
                answered = false;
              });
            },
            // ignore: prefer_const_constructors, unnecessary_new
            physics: new NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Question ${index + 1}/10",
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 163, 173),

                        // color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                      width: double.infinity,
                      //height: 50.0,
                      child: Column(
                        children: [
                          Text(
                            "${questions[index].title}",
                            style: const TextStyle(
                              color: Color.fromARGB(255, 0, 163, 173),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "${questions[index].question}",
                            style: const TextStyle(
                              color: Color.fromARGB(255, 116, 116, 116),
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 25.0,
                  ),
                  for (int i = 0; i < questions[index].answers!.length; i++)
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      margin: const EdgeInsets.only(
                          bottom: 20.0, left: 12.0, right: 12.0),
                      child: RawMaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        fillColor: btnPressed
                            ? AppColor.secondaryColor
                            : AppColor.secondaryColor,
                        onPressed: !answered
                            ? () {
                                score = score +
                                    questions[index]
                                        .answers!
                                        .values
                                        .toList()[i];
                                setState(() {
                                  btnPressed = true;
                                  answered = true;
                                });
                              }
                            : null,
                        child: Text(questions[index].answers!.keys.toList()[i],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                            )),
                      ),
                    ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  RawMaterialButton(
                    onPressed: () {
                      if (_controller!.page?.toInt() == questions.length - 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultScreen(score),
                            ));
                            
                        firestore.collection('quizscore').add({
                          'sender': username,
                          'quizscore': score,
                          'timestamp': DateTime.now().millisecondsSinceEpoch,
                          'senderemail': email,
                        });
                        
                      } else {
                        _controller!.nextPage(
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeInExpo);

                        setState(() {
                          btnPressed = false;
                        });
                      }
                    },
                    shape: const StadiumBorder(),
                    fillColor: const Color.fromARGB(255, 0, 163, 173),
                    padding: const EdgeInsets.all(18.0),
                    elevation: 0.0,
                    child: Text(
                      btnText,
                      style: const TextStyle(color: Colors.white),
                    ),
                  )
                ],
              );
            },
            itemCount: questions.length,
          )),
    );
  }
}
