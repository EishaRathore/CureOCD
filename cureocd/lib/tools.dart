// import 'dart:html';

// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:kf_drawer/kf_drawer.dart';
import '../widgets/custom_button.dart';
import 'pages/chatterScreen.dart';

class Tools extends KFDrawerContent {
  Tools();

  @override
  _ToolsState createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
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
          title: const Text(
            'CureOCD',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
//*******Tools

              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.center,
                child: Text('Tool',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 163, 173))),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'We have used OCULUS RIFT S for virtual therapy. The Oculus Rift S is a virtual reality headset co-developed by Lenovo Technologies and Facebook Technologies—a division of Meta Platforms',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),
                      // fontWeight: FontWeight.bold,
                    )),
              ),

              const SizedBox(height: 15),
              const SizedBox(height: 15),

              Image.asset('assets/images/oculus_rift_S_imgae.png'),
              const SizedBox(height: 15),
              const SizedBox(height: 15),

              const Align(
                alignment: Alignment.center,
                child: Text('Controllers',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 163, 173))),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'Oculus Rift S uses the same second generation Oculus Touch controllers used in the Oculus Quest. The controllers are similar to the ones used by the original Oculus Rift, except with the tracking ring on the top (to be seen by the headset.)',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),
                      // fontWeight: FontWeight.bold,
                    )),
              ),

              const SizedBox(height: 15),
              const SizedBox(height: 15),

              Image.asset('assets/images/controllers_rift_s.png'),
              const SizedBox(height: 15),
              const SizedBox(height: 15),

              //     const ListTile(
              //       leading: Icon(
              //         Icons.email,
              //         color: Colors.white,
              //       ),
              //       title: Text("cure@ocd.com",
              //           style: TextStyle(
              //             fontSize: 18,
              //             color: Colors.white,
              //             // fontWeight: FontWeight.bold,
              //           )),
              //       tileColor: Color.fromARGB(255, 0, 163, 173),
              //     ),

              //     const ListTile(
              //       leading: Icon(
              //         Icons.phone,
              //         color: Colors.white,
              //       ),
              //       title: Text("123456",
              //           style: TextStyle(
              //             fontSize: 18,
              //             color: Colors.white,
              //             // fontWeight: FontWeight.bold,
              //           )),
              //       tileColor: Color.fromARGB(255, 0, 163, 173),
              //     ),

              //     const ListTile(
              //       leading: Icon(
              //         Icons.location_on,
              //         color: Colors.white,
              //       ),
              //       title: Text("312 GT Road, Lahore",
              //           style: TextStyle(
              //             fontSize: 18,
              //             color: Colors.white,
              //             // fontWeight: FontWeight.bold,
              //           )),
              //       tileColor: Color.fromARGB(255, 0, 163, 173),
              //     ),
              //     const SizedBox(height: 20),
              //     Align(
              //       alignment: Alignment.center,
              //       child: Row(
              //         children: [
              //           Icon(Icons.copyright_outlined,
              //               size: 10.0,
              //               color: const Color.fromARGB(255, 0, 163, 173)),
              //           const Text('2022 CureOCD Inc.',
              //               style: TextStyle(
              //                   fontSize: 10,
              //                   fontWeight: FontWeight.bold,
              //                   color: Color.fromARGB(255, 0, 163, 173))),
              //         ],
              //       ),
              //     ),
            ],
          ),
        ));
  }
}
