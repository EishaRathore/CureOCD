import 'package:flutter/material.dart';
import 'package:vexpocd/profile.dart';
import 'package:vexpocd/home.dart';
import 'package:kf_drawer/kf_drawer.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({Key key}) : super(key: key);

  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> with TickerProviderStateMixin {
   KFDrawerController _drawerController;

  @override
  void initState() {
    // screenView = const MyHomePage();
    super.initState();
    _drawerController = KFDrawerController(
      initialPage: Home(),
      items: [
        KFDrawerItem.initWithPage(
          text: const Text('Home',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          icon: const Icon(Icons.home, color: Colors.white),
          page: Home(),
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
          // page: ClassBuilder.fromString('Notifications'),
        ),
        KFDrawerItem.initWithPage(
          text: const Text(
            'Blog',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          icon: const Icon(Icons.trending_up, color: Colors.white),
          //  page: Stats(),
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
          // page: Settings(),
        ),
      ],
    );
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
                          image: AssetImage('images/chat.png'),
                          fit: BoxFit.cover)),
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
                       const Text('User Name',
                        style: TextStyle(fontSize: 17, color: Colors.white)),
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
