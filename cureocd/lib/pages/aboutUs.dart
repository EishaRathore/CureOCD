// import 'dart:html';

// import 'dart:html';
import 'package:cureocd/therapist.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:kf_drawer/kf_drawer.dart';
import '../widgets/custom_button.dart';
import 'chatterScreen.dart';

class AboutUs extends KFDrawerContent {
  AboutUs();

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
                    icon: const Icon(
                      Icons.menu,
                      color: Color.fromARGB(255, 255, 254, 254),
                    ),
                    onPressed: widget.onMenuPressed,
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
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            // shrinkWrap: true,
            children: [
              const SizedBox(height: 15),
              Image.asset(
                'assets/cureocd_logo.png',
                fit: BoxFit.contain,
                height: 50,
              ),
              const SizedBox(height: 25),
              const Align(
                alignment: Alignment.center,
                child: Text('WHY CureOCD?',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 163, 173))),
              ),

              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'We believe in using virtual reality to help our clients improve their practice:',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 107, 102, 102),
                      //  fontWeight: FontWeight.bold,
                      //    color: Colors.indigo[900]
                    )),
              ),
              const SizedBox(height: 30),

              Image.asset(
                'assets/images/VR_environments_first_image.png',
                width: 200,
                height: 150,
                alignment: Alignment.center,
              ),

              // const Icon(Icons.view_array_outlined, size: 60),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.center,
                child: Text('Virtual Environments',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 163, 173))),
              ),

              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'Multiple environments to make the application of virtual reality to professional practice easier for everyone.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),
                      // fontWeight: FontWeight.bold,
                    )),
              ),
              const SizedBox(height: 15),

              const SizedBox(height: 15),

              const SizedBox(height: 15),
              // const Icon(Icons.help, size: 30),

              Image.asset(
                'assets/images/Supporttt.png',
                width: 200,
                height: 100,
                alignment: Alignment.center,
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.center,
                child: Text('Guide & Support',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 163, 173))),
              ),

              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'We got the best info and made it easier to learn how to best work with patients from the start of symptoms onset to the end of successful treatment using VR',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),

                      // fontWeight: FontWeight.bold,
                    )),
              ),
              const SizedBox(height: 15),

              const SizedBox(height: 15),
              //Image.asset('assets/images/aboutus_image1.PNG'),

              const SizedBox(height: 15),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text('Regain your life',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 163, 173))),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'Do VR therapy sessions with a therapist specialized in ERP, the gold standard treatment for OCD.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),

                      // fontWeight: FontWeight.bold,
                    )),
              ),
              const SizedBox(height: 15),
              Image.asset('assets/images/vrimage_one.jpg'),
              const SizedBox(height: 15),

              //   Image.asset('assets/images/image2_in_aboutUs.PNG'),

              //****Kids treatment  */

              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.center,
                child: Text('We treat kids, teens and young adults with OCD',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 163, 173))),
              ),

              const SizedBox(height: 25),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'Our VR assistant therapists are trained to appropriately treat OCD for all stages from low to high level because different stages have different treatment needs.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),
                      // fontWeight: FontWeight.bold,
                    )),
              ),
              const SizedBox(height: 15),

              // Align(
              //   alignment: Alignment.topLeft,
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => ChatterScreen(),
              //           ));
              //     },
              //   ),
              // ),
              const SizedBox(height: 25),
              Image.asset('assets/images/young_kids_aboutUS_image3.jpg'),

              //****Join community  */

              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'Join our community to meet others who are overcoming OCD.',
                    style: TextStyle(
                        fontSize: 25,
                        //  color: const Color.fromARGB(255, 107, 102, 102),
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 163, 173))),
              ),
              const SizedBox(height: 15),

              const Align(
                alignment: Alignment.center,
                child: Text(
                    'Participate in discussions and attend support groups in community to meet and learn from others on a similar journey with OCD',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),
                      // fontWeight: FontWeight.bold,
                    )),
              ),
              const SizedBox(height: 15),

              Hero(
                tag: 'Join now',
                child: CustomButton(
                  text: 'Join now',
                  accentColor: Colors.white,
                  mainColor: const Color.fromARGB(255, 0, 163, 173),
                  onpress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatterScreen(),
                        ));
                  },
                ),
              ),
              const SizedBox(height: 30),

              Image.asset('assets/images/community_chat_image.png'),

              //****Our therapists  */

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
                    'We have trained therapists. Every CureOCD therapist is licensed, trained in ERP and has experience in treatig the OCD patients.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),
                      // fontWeight: FontWeight.bold,
                    )),
              ),
              const SizedBox(height: 15),

              Hero(
                tag: 'Join now',
                child: CustomButton(
                  text: 'Further details',
                  accentColor: Colors.white,
                  mainColor: const Color.fromARGB(255, 0, 163, 173),
                  onpress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Therapists(),
                        ));
                  },
                ),
              ),

              // Align(
              //   alignment: Alignment.topLeft,
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => Therapists(),
              //           ));
              //     },
              //     child: const Text('Click here for further details >',
              //         style: TextStyle(
              //             fontSize: 15,
              //             fontWeight: FontWeight.bold,
              //             color: Color.fromARGB(255, 0, 163, 173))),
              //   ),
              // ),
              const SizedBox(height: 25),

              Image.asset('assets/images/woman_therapist1.jpg'),

              // const SizedBox(height: 10),
              // Image.asset('assets/images/woman_therapist2.jpg'),

//*******CONTACT

              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.center,
                child: Text('Contact us',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 163, 173))),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'We would love to hear form you. Feel free to ask anything. We will try our best to solve your queries.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),
                      // fontWeight: FontWeight.bold,
                    )),
              ),

              const SizedBox(height: 15),
              const SizedBox(height: 15),
              const ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                title: Text("cure@ocd.com",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                    )),
                tileColor: Color.fromARGB(255, 0, 163, 173),
              ),

              const ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                title: Text("123456",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                    )),
                tileColor: Color.fromARGB(255, 0, 163, 173),
              ),

              const ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                title: Text("312 GT Road, Lahore",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                    )),
                tileColor: Color.fromARGB(255, 0, 163, 173),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: const [
                    Icon(Icons.copyright_outlined,
                        size: 10.0, color: Color.fromARGB(255, 0, 163, 173)),
                    Text('2022 CureOCD Inc.',
                        style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 163, 173))),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
