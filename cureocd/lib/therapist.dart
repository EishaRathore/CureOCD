// import 'dart:html';

// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:kf_drawer/kf_drawer.dart';
import '../widgets/custom_button.dart';
import 'pages/chatterScreen.dart';

class Therapists extends KFDrawerContent {
  Therapists();

  @override
  _TherapistsState createState() => _TherapistsState();
}

class _TherapistsState extends State<Therapists> {
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
//*******Therapists

              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.center,
                child: Text('Our therapists',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 163, 173))),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'We have trained therapists. Every VEXPOcd therapist is licensed, trained in ERP and has experience in treatig the OCD patients. Here is the detail of our therapists:',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),
                      // fontWeight: FontWeight.bold,
                    )),
              ),

              const SizedBox(height: 30),
              const Text('Eisha Nawaz',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 163, 173))),

              Image.asset('assets/images/woman_therapist1.jpg'),

              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'Eisha Nawaz is licensed, trained in ERP and has experience in treatig the OCD patients.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),
                      // fontWeight: FontWeight.bold,
                    )),
              ),

              const SizedBox(height: 30),

              const Text('Mehr-un-nisa',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 163, 173))),

              Image.asset('assets/images/woman_therapist2.jpg'),

              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'Mehr-un-nisa is licensed, trained in ERP and has experience in treatig the OCD patients.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),
                      // fontWeight: FontWeight.bold,
                    )),
              ),

              const SizedBox(height: 30),

              const SizedBox(height: 30),

              const Text('Khansa Khaliq',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 163, 173))),

              Image.asset('assets/images/woman_therapist2.jpg'),

              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'Khansa Khaliq is licensed, trained in ERP and has experience in treatig the OCD patients.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),
                      // fontWeight: FontWeight.bold,
                    )),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ));
  }
}
