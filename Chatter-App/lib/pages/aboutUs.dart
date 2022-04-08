// import 'dart:html';

// import 'dart:html';

import 'package:chat_app/widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/pages/chatterScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VEXPOcd',
      theme: ThemeData(
        primarySwatch: Colors.indigo[900],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AboutUs(),
    );
  }
}

class AboutUs extends StatefulWidget {
  AboutUs({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  // String _selectedValue;
  // Map<String, bool> items = {
  //   'Sale': false,
  // };

  // Map<String, bool> items2 = {
  //   'Consultant Notes only': false,
  //   'Overdue only': false,
  //   'Data Range': false,
  // };

  @override
  Widget build(BuildContext context) {
    //   var aboutus_features;

    return Scaffold(
        appBar: AppBar(
          title: Text('VEXPOcd'),
          backgroundColor: Colors.indigo,

          // leading: Icon(
          //   Icons.cancel,
          // ),
          // actions: [
          //   TextButton(
          //     child: Text(
          //       'CLEAR',
          //       style: TextStyle(color: Colors.white, fontSize: 14),
          //     ),
          //     onPressed: () {},
          //   ),
          //   SizedBox(
          //     width: 15,
          //   ),
          //   TextButton(
          //     child: Text(
          //       'APPLY',
          //       style: TextStyle(color: Colors.white, fontSize: 14),
          //     ),
          //     onPressed: () {},
          //   ),
          //   SizedBox(
          //     width: 6,
          //   ),
          // ],
        ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: ListView(
            children: [
              SizedBox(height: 15),
              Align(
                alignment: Alignment.center,
                child: Text('WHY VEXPOCD?',
                    style: TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[900])),
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
                        color: Colors.indigo[900])),
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
                        color: Colors.indigo[900])),
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
                        color: Colors.indigo[900])),
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

              // Align(
              //   alignment: Alignment.center,
              //   child: Text(
              //       'We believe in using virtual reality to help our clients improve their practice.',
              //       style: TextStyle(
              //         fontSize: 15,
              //         fontWeight: FontWeight.bold,
              //       )),
              // ),
              // SizedBox(height: 15),
              // Image.asset('assets/images/vr_image1.jpg'),
              SizedBox(height: 15),
              //Image.asset('assets/images/aboutus_image1.PNG'),

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
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => ChatterScreen(),
                        ));
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
                  mainColor: Colors.indigo[900],
                  onpress: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => ChatterScreen(),
                        ));
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

              // Align(
              //   alignment: Alignment.center,

              // ),
              // Image(image: aboutus_features.PNG),
              // Icon(
              //   Icons.aboutus_features.PNG,
              //   size: 80,
              // ),

              //   Align(
              //     alignment: Alignment.center,
              //     child: Text('Muk',
              //         style: TextStyle(
              //           fontSize: 18,
              //           fontWeight: FontWeight.bold,
              //         )),
              //   ),
              //   DropdownButton<String>(
              //     value: _selectedValue,
              //     iconEnabledColor: Colors.purple,
              //     underline: Container(
              //       height: 2,
              //       color: Colors.purple,
              //     ),
              //     isExpanded: true,
              //     items: <String>[
              //       "Newest first",
              //       "Oldest first",
              //       "Value High-Low",
              //       "Value Low-High",
              //     ].map<DropdownMenuItem<String>>((String value) {
              //       return DropdownMenuItem<String>(
              //         value: value,
              //         child: Text(
              //           value,
              //           style: TextStyle(color: Colors.black),
              //         ),
              //       );
              //     }).toList(),
              //     hint: Text(
              //       ('Choose an option'),
              //       style: TextStyle(fontSize: 13),
              //     ),
              //     onChanged: (String value) {
              //       setState(() {
              //         _selectedValue = value;
              //       });
              //     },
              //   ),
              //   SizedBox(height: 15),
              //   Align(
              //     alignment: Alignment.centerLeft,
              //     child: Text(
              //       'Transaction Types',
              //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //     ),
              //   ),
              //   SizedBox(height: 14),
              //   ToggleButtons(
              //     borderRadius: BorderRadius.circular(32.0),
              //     fillColor: Colors.purple,
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.all(18.0),
              //         child: Text(
              //           'Money in',
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(18.0),
              //         child: Text(
              //           'Money out',
              //           style: TextStyle(color: Colors.white),
              //         ),
              //       ),
              //     ],
              //     onPressed: (i) {},
              //     isSelected: [false, true],
              //   ),
              //   SizedBox(height: 3),
              //   Expanded(
              //     child: Column(
              //       children: items.keys.map((String key) {
              //         return new CheckboxListTile(
              //           title: new Text(key),
              //           value: items[key],
              //           activeColor: Colors.purple,
              //           checkColor: Colors.white,
              //           onChanged: (bool value) {
              //             setState(() {
              //               items[key] = value;
              //             });
              //           },
              //         );
              //       }).toList(),
              //     ),
              //   ),
              //   Divider(
              //     thickness: 1,
              //     color: Colors.grey,
              //   ),
              //   SizedBox(
              //     height: 8,
              //   ),
              //   Text('Transaction Health',
              //       style: TextStyle(
              //         fontSize: 18,
              //         fontWeight: FontWeight.bold,
              //       )),
              //   SizedBox(height: 18),
              //   Expanded(
              //     child: Column(
              //       children: [
              //         ToggleButtons(
              //           borderRadius: BorderRadius.circular(20.0),
              //           fillColor: Colors.purple,
              //           children: [
              //             Padding(
              //               padding: const EdgeInsets.all(24.0),
              //               child: Text(
              //                 'Good ',
              //                 style: TextStyle(color: Colors.white, fontSize: 14),
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.all(24.0),
              //               child: Text(
              //                 'Ok ',
              //                 style: TextStyle(color: Colors.black, fontSize: 14),
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.all(24.0),
              //               child: Text(
              //                 'Bad ',
              //                 style: TextStyle(color: Colors.black, fontSize: 14),
              //               ),
              //             ),
              //           ],
              //           onPressed: (i) {},
              //           isSelected: [true, false, false],
              //         ),
              //       ].toList(),
              //     ),
              //   ),
              //   SizedBox(height: 18),
              //   Expanded(
              //     child: Column(
              //       children: items2.keys.map((String key) {
              //         return new CheckboxListTile(
              //           title: new Text(key),
              //           value: items2[key],
              //           activeColor: Colors.purple,
              //           checkColor: Colors.white,
              //           onChanged: (bool value) {
              //             setState(() {
              //               items2[key] = value;
              //             });
              //           },
              //         );
              //       }).toList(),
              //     ),
              //   ),
              // ],
            ],
          ),
        ));
  }
}
