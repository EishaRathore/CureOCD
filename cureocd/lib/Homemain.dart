import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cureocd/pages/aboutUs.dart';

import 'package:edge_alert/edge_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cureocd/Contact.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'chatbbot/screens/result_screen.dart';

final _firestore = Firestore.instance;
String username = 'User';
String email = 'user@example.com';
late String messageText;
late FirebaseUser loggedInUser;

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> with TickerProviderStateMixin {
  final _auth = FirebaseAuth.instance;
  late KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
    // getMessages();
    _drawerController = KFDrawerController(
      initialPage: AboutUs(),
      items: [
        KFDrawerItem.initWithPage(
          text: const Text('Home',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: 'Poppins',
              )),
          icon: const Icon(Icons.home, color: Colors.white),
          page: AboutUs(),
        ),
        KFDrawerItem.initWithPage(
          text: const Text(
            'OCD Test',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'Poppins',
            ),
          ),
          icon: const Icon(Icons.question_answer_rounded, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/chatbot');
          },
          // page: ClassBuilder.fromString('Notifications'),
        ),
        KFDrawerItem.initWithPage(
          text: const Text(
            'View OCD result',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'Poppins',
            ),
          ),
          icon: const Icon(Icons.trending_up, color: Colors.white),
          // page: ResultScreen(),
        ),
        KFDrawerItem.initWithPage(
          text: const Text(
            'Contact us',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'Poppins',
            ),
          ),
          icon: const Icon(Icons.account_box, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/contact');
          },
        ),
      ],
    );
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedInUser = user;
        setState(() {
          username = loggedInUser.displayName;
          email = loggedInUser.email;
        });
      }
    } catch (e) {
      EdgeAlert.show(context,
          title: 'Something Went Wrong',
          description: e.toString(),
          gravity: EdgeAlert.BOTTOM,
          icon: Icons.error,
          backgroundColor: const Color.fromARGB(255, 0, 163, 173));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KFDrawer(
        controller: _drawerController,
        header: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://www.freeiconspng.com/uploads/person-icon-8.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 160,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //  const SizedBox(
                      //     width: 6,
                      //   ),
                      Text(username,
                          style: const TextStyle(
                              fontSize: 17, color: Colors.white)),
                      // const SizedBox(
                      //   height: 8,
                      // ),
                      // ignore: unnecessary_const

                      // const Text("\n", style: TextStyle(fontSize: 17)),
                      Text(email,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.white)),
                    ]),
              ],
            ),
          ),
        ),
        footer: KFDrawerItem(
          text: const Text(
            'Logout',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'Poppins',
            ),
          ),
          icon: const Icon(Icons.logout, color: Colors.white),
          onPressed: () async {
            await _auth.signOut();
            Navigator.pushReplacementNamed(context, '/login');
          },
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 0, 163, 173),
              Color.fromARGB(255, 11, 81, 128),
            ],
            tileMode: TileMode.repeated,
          ),
        ),
      ),
      // screenView = const MyHomePage();
    );
  }
}