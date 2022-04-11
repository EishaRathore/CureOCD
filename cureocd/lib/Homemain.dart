import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cureocd/pages/aboutUs.dart';
import 'package:edge_alert/edge_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cureocd/profile.dart';
import 'package:kf_drawer/kf_drawer.dart';

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
              style: TextStyle(color: Colors.white, fontSize: 18)),
          icon: const Icon(Icons.home, color: Colors.white),
          page: AboutUs(),
        ),
        KFDrawerItem.initWithPage(
          text: const Text(
            'Profile',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: const Icon(Icons.account_box, color: Colors.white),
          page: Profile(),
        ),
        KFDrawerItem.initWithPage(
          text: const Text(
            'OCD Test',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: const Icon(Icons.question_answer_rounded, color: Colors.white),
          onPressed: (){
             Navigator.pushReplacementNamed(context, '/chatbot');
          },
          // page: ClassBuilder.fromString('Notifications'),
        ),
        KFDrawerItem.initWithPage(
          text: const Text(
            'Blog',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: const Icon(Icons.trending_up, color: Colors.white),
         page: AboutUs(),
         
        ),
        KFDrawerItem.initWithPage(
          text: const Text(
            'Contact',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: const Icon(Icons.contact_page_rounded, color: Colors.white),
          //  page: Schedules(),
        ),
        KFDrawerItem.initWithPage(
          text: const Text(
            'Login',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: const Icon(Icons.login_rounded, color: Colors.white),
          onPressed: () async {
                await _auth.signOut();
                Navigator.pushReplacementNamed(context, '/login');
              },
          // page: Settings(),
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
          backgroundColor: Colors.indigo[900]);
    }
  }
  // void getMessages()async{
  //   final messages=await _firestore.collection('messages').getDocuments();
  //   for(var message in messages.documents){
  //     print(message.data);
  //   }
  // }

  // void messageStream() async {
  //   await for (var snapshot in _firestore.collection('messages').snapshots()) {
  //     snapshot.documents;
  //   }
  // }
  
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
              ),),
                ),
                const SizedBox(
                  height: 160,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const SizedBox(height: 8),
                    Row(
                     children: <Widget>[
                       SizedBox(width: 6,),
                        Text(username,
                        style: TextStyle(fontSize: 17, color: Colors.white)),
                        Text("\n",
                        style: TextStyle(fontSize: 17)),
                        Text(email,
                        style: TextStyle(fontSize: 10, color: Colors.white)),
                     ]

                    ),
                    
                  ],
                )
              ],
            ),
          ),
        ),
        footer: KFDrawerItem(
          text: const Text(
            'Logout',
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
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
              Color.fromARGB(255, 7, 0, 100),
              Color.fromARGB(255, 163, 3, 142)
            ],
            tileMode: TileMode.repeated,
          ),
        ),
      ),
      // screenView = const MyHomePage();
    );
  }
}
