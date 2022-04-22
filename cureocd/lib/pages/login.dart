import 'package:edge_alert/edge_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import '../widgets/custom_button.dart';
import '../widgets/customtextinput.dart';

class ChatterLogin extends StatefulWidget {
  @override
  _ChatterLoginState createState() => _ChatterLoginState();
}

class _ChatterLoginState extends State<ChatterLogin> {
  late String email;
  late String password;
  bool loggingin = false;
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: loggingin,
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            // margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.2),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/cureocd_logo.png'),
                  const SizedBox(height: 15),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  // const Hero(
                  //   tag: 'HeroTitle',
                  //   child: Text(
                  //     'CureOCD',
                  //     style: TextStyle(
                  //         color: Color.fromARGB(255, 0, 163, 173),
                  //         fontFamily: 'Poppins',
                  //         fontSize: 26,
                  //         fontWeight: FontWeight.w700),
                  //   ),
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  // Text(
                  //   "World's most private chatting app".toUpperCase(),
                  //   style: TextStyle(
                  //       fontFamily: 'Poppins',
                  //       fontSize: 12,
                  //       color: Colors.deepPurple),
                  // ),
                  CustomTextInput(
                    hintText: 'Email',
                    leading: Icons.mail,
                    obscure: false,
                    keyboard: TextInputType.emailAddress,
                    userTyped: (val) {
                      email = val;
                    },
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  CustomTextInput(
                    hintText: 'Password',
                    leading: Icons.lock,
                    obscure: true,
                    userTyped: (val) {
                      password = val;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Hero(
                    tag: 'loginbutton',
                    child: CustomButton(
                      mainColor: const Color.fromARGB(255, 0, 163, 173),
                      // text: 'login',
                      //  accentColor: Color.fromARGB(255, 0, 163, 173),
                      //      mainColor: Color.fromARGB(255, 255, 255, 255),
                      onpress: () async {
                        if (password != null && email != null) {
                          setState(() {
                            loggingin = true;
                          });
                          try {
                            final loggedUser =
                                await _auth.signInWithEmailAndPassword(
                                    email: email, password: password);
                            if (loggedUser != null) {
                              setState(() {
                                loggingin = false;
                              });
                              Navigator.pushNamed(context, '/homeMain');
                            }
                          } catch (e) {
                            setState(() {
                              loggingin = false;
                            });
                            EdgeAlert.show(
                              context,
                              title: 'Login Failed',
                              description: e.toString(),
                              gravity: EdgeAlert.BOTTOM,
                              icon: Icons.error,
                              backgroundColor:
                                  const Color.fromARGB(255, 0, 163, 173),
                            );
                          }
                        } else {
                          EdgeAlert.show(
                            context,
                            title: 'Login failed',
                            description: 'Please enter the email and password.',
                            gravity: EdgeAlert.BOTTOM,
                            icon: Icons.error,
                            backgroundColor:
                                const Color.fromARGB(255, 0, 163, 173),
                          );
                        }
                        // Navigator.pushReplacementNamed(context, '/chat');
                      },
                      text: 'Log in',
                      accentColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Already have an account? ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 107, 102, 102),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Hero(
                          tag: 'loginbutton',
                          child: TextButton(
                            child: const Text(
                              'Signup',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 163, 173),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/signup');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  // onTap: () {
                  //   Navigator.pushReplacementNamed(context, '/signup');
                  // },
                  // child: const Text(
                  //   'or create an account',
                  //   style: TextStyle(
                  //       fontFamily: 'Poppins',
                  //       fontSize: 14,
                  //       color: Color.fromARGB(255, 255, 255, 255)),
                  // )
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  // Hero(
                  //   tag: 'footer',
                  //   child: Text(

                  //     style: TextStyle(fontFamily: 'Poppins'),
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
