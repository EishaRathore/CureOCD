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
                alignment: Alignment.topLeft,
                child: Text('Oculus Rift S',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 163, 173))),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'We have used OCULUS RIFT S headset for virtual therapy. The headset to comfortably fit each user and easily synchronize with our CureOCD platform.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),
                    )),
              ),

              Image.asset('assets/images/oculus_rift_S_imgae.png'),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'Learn how to stay safe while using your Oculus Rift S:\n\n',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 0, 163, 173),
                    )),
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    ' - Take at least a 10-15 minutes, even if you don’t thing you need it.\n\n - Use of the headset and Oculus controllers may result in a loss of balance. If your balance feels affected, remove your headset and take a break until normal balance returns.\n\n - Do not leave your Rift near pets or small children.\n\n - Do not eat, drink, or smoke near your Rift.\n\n - Make sure to clear your play area of any objects, wires or people you may knock into or trip over when using your Rift. \n\n - Secure your Rift in a safe place when you are not using it. \n\n - To reduce the risk of discomfort, the headset should be balanced and centered. Please adjust the top strap and adjust the headband by twisting the fit wheel on the back to ensure comfortable placement of the headset and that you see a single, clear image. Adjust the lenses by pressing the button located on the right underside of your headset to accommodate glasses or improve your comfort.',
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 107, 102, 102)
                        )),
              ),
              const SizedBox(height: 40),
              const Align(
                alignment: Alignment.topLeft,
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
                    )),
              ),

              const SizedBox(height: 15),
              const SizedBox(height: 15),

              Image.asset('assets/images/controllers_rift_s.png'),
              const SizedBox(height: 15),
              const SizedBox(height: 15),
            ],
          ),
        ));
  }
}