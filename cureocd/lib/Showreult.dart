import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:kf_drawer/kf_drawer.dart';
import '../widgets/custom_button.dart';
import 'chatbbot/chatbot.dart';
import 'chatbbot/common/theme_helper.dart';
import 'chatbbot/ui/shared/color.dart';
//import 'chatbbot/widgets/disco_button.dart';
import 'pages/chatterScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edge_alert/edge_alert.dart';
import '../../widgets/CustomButton.dart';

// final _firestore = Firestore.instance;
// String username = 'User';
// String email = 'user@example.com';
// int quizscore = 0;
// late FirebaseUser loggedInUser;
late final UserInfo profie;

class Showresult extends KFDrawerContent {
  Showresult();

  @override
  _ShowresultState createState() => _ShowresultState();
}

class _ShowresultState extends State<Showresult> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    getCurrentUser();
    // getMessages();
  }

// firestoreInstance
//     .collection("users")
//     .where("address.country", isEqualTo: "USA")
//     .get()
//     .then((value) {
//   value.docs.forEach((result) {
//     print(result.data());
//   });
// });
  getCurrentUser() async {
    final FirebaseUser user = await _auth.currentUser();
    final uid = user.uid;
    return uid;
    // Similarly we can get email as well
    //final uemail = user.email;
    //print(uid);
    //print(uemail);
  }

  // void getScore() async {
  //   try {
  //     final user = await _auth.currentUser();
  //     if (user != null) {
  //       loggedInUser = user;
  //       setState(() {
  //         username = loggedInUser.displayName;
  //         // email = loggedInUser.email;
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

//  Future getScore() async{
//    DocumentSnapshot document = await Firestore.instance.collection('quizscore').document(FirebaseUser().uid).get();
//   score = document.data[quizscore];
//  }
  //  void scoreStream() async {
  //   await for (var snapshot in _firestore.collection('quizscore').snapshots()) {
  //     snapshot.documents;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    //   var aboutus_features;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 163, 173),
        automaticallyImplyLeading: false,
        elevation: 1.0,
        leading: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(32.0)),
          child: Material(
            shadowColor: Colors.transparent,
            color: Colors.transparent,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios,
                      color: Color.fromARGB(255, 255, 255, 255)),
                  onPressed: () => Navigator.pushNamed(context, '/homeMain'),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            // alignment: Alignment.topRight,
            icon: const Icon(
              Icons.chat,
              color: Color.fromARGB(255, 255, 254, 254),
            ),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatterScreen(),
                )),
            //   padding:  new EdgeInsets.all(0.0),
          ),
        ],
        title: const Text(
          'CureOCD',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
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
          FlatButton(
            splashColor: Color.fromARGB(255, 0, 163, 173),
            textColor: Colors.white,
            child: Text(
              'Back',
            ),
            onPressed: () {
              setState(() {
                Navigator.pushNamed(context, '/homeMain');
                //   txt = 'FlatButton tapped';
              });
            },
          ),
          // FlatButton(
          //   minWidth: 2,
          //   splashColor: Color.fromARGB(255, 0, 163, 173),
          //   textColor: Colors.white,
          //   child: Text(
          //     'Repeat YBOCS-test',
          //   ),
          //   onPressed: () {
          //     setState(() {
          //       Navigator.pushNamed(context, '/chatbotScreen');
          //       //   txt = 'FlatButton tapped';
          //     });
          //   },
          // ),

          // FlatButton(
          //   text: 'Close',
          //   accentColor: Colors.white,
          //   mainColor: Color.fromARGB(255, 0, 163, 173),
          //   onpress: () {
          //     Navigator.pushNamed(context, '/homeMain');
          //   },
          // ),

          // CustomButton(
          //   text: 'Repeat YBOCS-test',
          //   accentColor: Colors.white,
          //   mainColor: Color.fromARGB(255, 0, 163, 173),
          //   onpress: () {
          //     Navigator.pushNamed(context, '/chatbotScreen');
          //   },
          // ),

          //end
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
          const SizedBox(
            width: double.infinity,
            child: Text(
              "Your Score:",
              textAlign: TextAlign.center,
              style: TextStyle(
                //   color: Colors.white,
                color: Color.fromARGB(255, 0, 163, 173),

                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          //         Text((() {
          //         if (user != null) {
          // for (profile : user.getProviderData()) {
          //     // // Id of the provider (ex: google.com)
          //     // String providerId = profile.getProviderId();

          //     // UID specific to the provider
          //     String uid = profile.getUid();

          //     // Name, email address, and profile photo Url
          //     // String name = profile.getDisplayName();
          //     // String email = profile.getEmail();
          //     // Uri photoUrl = profile.getPhotoUrl();
          //     return
          // }
          //       //   if (widget.score >= 0 && widget.score <= 13) {
          //       //     _resultPrnt = "mild symptoms";
          //       //     return _resultPrnt;
          //       //   } else if (widget.score >= 14 && widget.score <= 25) {
          //       //     _resultPrnt = "moderate symptoms";
          //       //     return _resultPrnt;
          //       //   } else if (widget.score >= 26 && widget.score <= 34) {
          //       //     _resultPrnt = "moderate-severe symptoms";
          //       //     return _resultPrnt;
          //       //   } else {
          //       //     _resultPrnt = "severe symptoms";
          //       //     return _resultPrnt;
          //       //   }

          //       })()),
          // Text(
          //  // "20",
          //    "${widget.score} / 40",
          //   style: const TextStyle(
          //     color: Colors.orange,
          //     fontSize: 85.0,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          const SizedBox(
            height: 20.0,
          ),
          // Text((() {
          //   if (widget.score >= 0 && widget.score <= 13) {
          //     _resultPrnt = "mild symptoms";
          //     return _resultPrnt;
          //   } else if (widget.score >= 14 && widget.score <= 25) {
          //     _resultPrnt = "moderate symptoms";
          //     return _resultPrnt;
          //   } else if (widget.score >= 26 && widget.score <= 34) {
          //     _resultPrnt = "moderate-severe symptoms";
          //     return _resultPrnt;
          //   } else {
          //     _resultPrnt = "severe symptoms";
          //     return _resultPrnt;
          //   }

          // })()),
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
            //  color : Color.fromARGB(255, 0, 163, 173)
            //  color : Color.fromARGB(255, 0, 163, 173)
            padding: const EdgeInsets.all(18.0),
            child: const Text(
              "Repeat Y-BOCS test",
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
