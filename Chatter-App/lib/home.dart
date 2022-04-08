import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:vexpocd/detailpage.dart';
import 'package:kf_drawer/kf_drawer.dart';

import 'widgets/CustomButton.dart';

class Home extends KFDrawerContent {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 13, 66),
        automaticallyImplyLeading: false,
        elevation: 1.0,
        leading: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(32.0)),
          child: Material(
            shadowColor: Colors.transparent,
            color: Colors.transparent,
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Color.fromARGB(255, 255, 254, 254),
              ),
              onPressed: widget.onMenuPressed,
            ),
          ),
        ),
        title: GradientText(
          'VexpOcd',
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          // ignore: prefer_const_literals_to_create_immutables
          colors: [
            const Color.fromARGB(255, 0, 118, 197),
            const Color.fromARGB(255, 197, 194, 194),
            // const Color.fromARGB(255, 107, 4, 110),
            const Color.fromARGB(255, 0, 118, 197),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  <Widget>[
                       SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Text('WHY VEXPOCD?',
                    style: TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo)),
              ),
              SizedBox(height: 15),

              Image.asset('assets/images/VEXPOcd_logo.png'),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Text(
                    'We believe in using virtual reality to help our clients improve their practice:',
                    style: TextStyle(
                      fontSize: 16,
                      //  fontWeight: FontWeight.bold,
                      //    color: Colors.indigo[900]
                    )),
              ),
              SizedBox(height: 30),
              Icon(Icons.view_array_outlined, size: 60),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Text('Virual Environments',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo)),
              ),

              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Text(
                    'Multiple environment Configurations specially designed for therapists',
                    style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(height: 15),

              SizedBox(height: 15),
              Icon(Icons.bloodtype, size: 60),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Text('Galvanic skin response',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo)),
              ),

              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Text(
                    'An electrodermal response sensor that measure a patient sweat response',
                    style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(height: 15),

              SizedBox(height: 15),
              Icon(Icons.help, size: 60),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Text('Guide & Support',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo)),
              ),

              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Text(
                    'We got the best info and made it easier to learn how to best work with your patients from the start of symptoms onset to the end of successful treatment using VR',
                    style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(height: 15),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Text('Regain your life',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[900])),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Text(
                    'Do VR therapy sessions with a therapist specialized in ERP, the gold standard treatment for OCD.',
                    style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(height: 15),
              Image.asset('assets/images/vrimage_one.jpg'),
              SizedBox(height: 15),

              //   Image.asset('assets/images/image2_in_aboutUs.PNG'),

              //****Kids treatment  */

              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Text('We treat kids, teens and young adults with OCD',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[900])),
              ),

              SizedBox(height: 25),
              Align(
                alignment: Alignment.center,
                child: Text(
                    'Our VR assistant therapist is trained to appropriately treat OCD for all stages from low to high level because different stages have different treatment needs.',
                    style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(height: 15),

              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () {
                  
                  },
                  child: Text('Learn more >',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo[900])),
                ),
              ),
              SizedBox(height: 25),
              Image.asset('assets/images/young_kids_aboutUS_image3.jpg'),

              //****Join community  */

              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Text(
                    'Join our community to meet others who are overcoming OCD.',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[900])),
              ),
              SizedBox(height: 15),

              Align(
                alignment: Alignment.center,
                child: Text(
                    'Participate in discussions and attend support groups in community to meet and learn from others on a similar journey with OCD',
                    style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(height: 15),

              Hero(
                tag: 'Join now',
                child: CustomButton(
                  text: 'Join now',
                  accentColor: Colors.white,
                  mainColor: Colors.indigo,
                  onpress: () {
                   
                  },
                ),
              ),
              SizedBox(height: 30),

              Image.asset('assets/images/community_chat_image.png'),

              //****Our therapists  */

              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Text('Our therapists',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[900])),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Text(
                    'We have trained therapists. Every VEXPOcd therapist is licensed, trained in ERP and has experience in treatig the OCD patients.',
                    style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                    )),
              ),

              SizedBox(height: 15),
              Image.asset('assets/images/woman_therapist1.jpg'),

              SizedBox(height: 10),
              Image.asset('assets/images/woman_therapist2.jpg'),

//*******CONTACT

              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Text('Contact us',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[900])),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Text(
                    'We would love to hear form you. Feel free to ask anything. We will try our best to solve your queries.',
                    style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                    )),
              ),

              SizedBox(height: 15),
              SizedBox(height: 15),
              ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                title: Text("vexp@ocd.com",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                    )),
                tileColor: Colors.indigo[900],
              ),

              // subtitle: Text("Sign out of this account"),
              // onTap: () {
              //   Navigator.push(
              //       context,
              //       new MaterialPageRoute(
              //         builder: (context) => AboutUs(),
              //       ));
              // },

              ListTile(
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
                tileColor: Colors.indigo[900],
              ),

              ListTile(
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
                tileColor: Colors.indigo[900],
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Text('c 2022 VEXPOcd Inc.',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[900])),
              ),


                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
