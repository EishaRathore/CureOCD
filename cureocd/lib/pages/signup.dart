//import 'package:chat_app/widgets/custombutton.dart';
// import 'package:chat_app/widgets/customtextinput.dart';
import 'package:edge_alert/edge_alert.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import '../widgets/custom_button.dart';
import '../widgets/customtextinput.dart';

class ChatterSignUp extends StatefulWidget {
  const ChatterSignUp({Key? key}) : super(key: key);

  @override
  _ChatterSignUpState createState() => _ChatterSignUpState();
}

class _ChatterSignUpState extends State<ChatterSignUp> {
  final _auth = FirebaseAuth.instance;
  late String email;
  // String username;
  late String password;
  late String name;
  bool signingup = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: signingup,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            // margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.2),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/cureocd_logo.png',
                    fit: BoxFit.contain,
                    height: 45,
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  // ignore: prefer_const_constructors
                  // Hero(
                  //   tag: 'HeroTitle',
                  //   child: const Text(
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
                    hintText: 'Username',
                    leading: Icons.text_format,
                    obscure: false,
                    userTyped: (value) {
                      name = value;
                    },
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  // CustomTextInput(
                  //   hintText: 'Username',
                  //   obscure: false,
                  //   leading: Icons.supervised_user_circle,
                  //   userTyped: (value) {
                  //     username = value;
                  //   },
                  // ),
                  const SizedBox(
                    height: 0,
                  ),
                  CustomTextInput(
                    hintText: 'Email',
                    leading: Icons.mail,
                    keyboard: TextInputType.emailAddress,
                    obscure: false,
                    userTyped: (value) {
                      email = value;
                    },
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  CustomTextInput(
                    hintText: 'Password',
                    leading: Icons.lock,
                    keyboard: TextInputType.visiblePassword,
                    obscure: true,
                    userTyped: (value) {
                      password = value;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Hero(
                    tag: 'signupbutton',
                    child: CustomButton(
                      mainColor: const Color.fromARGB(255, 0, 163, 173),
                      onpress: () async {
                        if (name != null && password != null && email != null) {
                          setState(() {
                            signingup = true;
                          });
                          try {
                            final newUser =
                                await _auth.createUserWithEmailAndPassword(
                                    email: email, password: password);
                            if (newUser != null) {
                              UserUpdateInfo info = UserUpdateInfo();
                              info.displayName = name;
                              await newUser.user.updateProfile(info);
                              Navigator.pushNamed(context, '/homeMain');
                            }
                          } catch (e) {
                            setState(() {
                              signingup = false;
                            });
                            EdgeAlert.show(
                              context,
                              title: 'Signup Failed',
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
                            title: 'Signup Failed',
                            description: 'All fields are required.',
                            gravity: EdgeAlert.BOTTOM,
                            icon: Icons.error,
                            backgroundColor:
                                const Color.fromARGB(255, 0, 163, 173),
                          );
                        }
                      },
                      text: 'sign up',
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
                              'Login',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 163, 173),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // login
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/login');
                            },
                          ),
                        ),
                      ],
                    ),
                  ), // child: const Text(
                  //   'or log in instead',
                  //   style: const TextStyle(
                  //       fontFamily: 'Poppins',
                  //       fontSize: 12,
                  //       color: olor.fromARGB(255, 0, 163, 173),),
                  // )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  // Hero(
                  //     tag: 'footer',
                  //     child: Text(

                  //       style: TextStyle(fontFamily: 'Poppins'),
                  //     ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
