import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class WelcomeView extends StatelessWidget {
  final AnimationController animationController;
  const WelcomeView({Key key,  this.animationController,})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _firstHalfAnimation =
        Tween<Offset>(begin: const Offset(1, 0), end: const Offset(0, 0)).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(
          0.6,
          0.8,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
    final _secondHalfAnimation =
        Tween<Offset>(begin: const Offset(0, 0), end: const Offset(-1, 0)).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(
          0.8,
          1.0,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );

    final _welcomeFirstHalfAnimation =
        Tween<Offset>(begin: const Offset(2, 0), end: const Offset(0, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: const Interval(
        0.6,
        0.8,
        curve: Curves.fastOutSlowIn,
      ),
    ));

    final _welcomeImageAnimation =
        Tween<Offset>(begin: const Offset(4, 0), end: const Offset(0, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: const Interval(
        0.6,
        0.8,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    return SlideTransition(
      position: _firstHalfAnimation,
      child: SlideTransition(
        position: _secondHalfAnimation,
        child: SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
        
          Positioned(
             top:0,
         left: 0,

        //  right: 40,
             
              child:  Image.asset(
                  "assets/logo.png",
                  width: 100,
                  height: 180,
                // width: size.width * 0.2,
                 alignment: Alignment.topLeft,
                ),
              ), 
 Positioned(
              top: 29,
              left: 68,

              child:   GradientText(
                  'VexpOcd',
                  style: const TextStyle(
                    fontSize: 23.0,
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
 Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: _welcomeImageAnimation,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 350, maxHeight: 350),
                  child: Image.asset(
                    'assets/welcome.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SlideTransition(
                position: _welcomeFirstHalfAnimation,
                child: const Text(
                  "Welcome",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 64, right: 64, top: 16, bottom: 13),
                child: Text(
                  "OCD makes life difficult but you can still enjoy a happy life.",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        ],
      ),
    ),
        // child: Padding(
        //   padding: const EdgeInsets.only(bottom: 100),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       SlideTransition(
        //         position: _welcomeImageAnimation,
        //         child: Container(
        //           constraints: const BoxConstraints(maxWidth: 350, maxHeight: 350),
        //           child: Image.asset(
        //             'assets/welcome.png',
        //             fit: BoxFit.contain,
        //           ),
        //         ),
        //       ),
        //       SlideTransition(
        //         position: _welcomeFirstHalfAnimation,
        //         child: const Text(
        //           "Welcome",
        //           style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        //         ),
        //       ),
        //       const Padding(
        //         padding:
        //             EdgeInsets.only(left: 64, right: 64, top: 16, bottom: 16),
        //         child: Text(
        //           "OCD makes life difficult but you can still\n enjoy a happy life.",
        //           textAlign: TextAlign.center,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
