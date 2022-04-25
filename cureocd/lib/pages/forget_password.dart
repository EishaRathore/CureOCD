import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../widgets/CustomButton.dart';
import 'ConfirmEmail.dart';

class ForgotPassword extends StatefulWidget {
  static String id = 'forgot-password';
 final String message =
      "An email has just been sent to you, Click the link provided to complete password reset";

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _auth = FirebaseAuth.instance;

  final _formKey = GlobalKey<FormState>();
  late String _email;

  _passwordReset() async {
    try {
      _formKey.currentState?.save();
      final user = await _auth.sendPasswordResetEmail(email: _email);

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return ConfirmEmail(message: widget.message,);
        }),
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  leading: IconButton(
    icon: const Icon(Icons.arrow_back, color: const Color.fromARGB(255, 255, 255, 255)),
    onPressed: () =>  Navigator.pushReplacementNamed(context, '/login')
  ), 
 //title: Text("CureOCD"),
  //centerTitle: true,
),
      backgroundColor: const Color.fromARGB(255, 0, 163, 173),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Enter Your Email',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              TextFormField(
                onSaved: (newEmail) {
                  _email = newEmail!;
                },
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelText: 'Email',
                  icon:  Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  errorStyle: const TextStyle(color: Colors.white),
                  labelStyle: const TextStyle(color: Colors.white),
                  hintStyle: const TextStyle(color: Colors.white),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Hero(
                      tag: 'sendEmail',
                      child: CustomButton(
                        mainColor: const Color.fromARGB(255, 255, 255, 255),
                        // text: 'login',
                        //  accentColor: Color.fromARGB(255, 0, 163, 173),
                        //      mainColor: Color.fromARGB(255, 255, 255, 255),
                        onpress: () {
                          _passwordReset();
                  print(_email);
                          // Navigator.pushReplacementNamed(context, '/chat');
                        },
                        text: 'Send Email',
                        accentColor: const Color.fromARGB(255, 0, 163, 173),
                      ),
                    ),
              // RaisedButton(
              //   child: const Text('Send Email'),
              //   onPressed: () {
              //     _passwordReset();
              //     print(_email);
              //   },
              // ),
              FlatButton(
                child: const Text('Sign In'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
