import 'package:flutter/material.dart';

class TopBackSkipView extends StatelessWidget {
  final AnimationController animationController;
  final VoidCallback onBackClick;
  final VoidCallback onSkipClick;

  const TopBackSkipView({
    Key? key,
    required this.onBackClick,
    required this.onSkipClick,
    required this.animationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _animation =
        Tween<Offset>(begin: const Offset(0, -1), end: const Offset(0.0, 0.0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: const Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));

    final _backAnimation =
        Tween<Offset>(begin: const Offset(0, 0), end: const Offset(-2, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: const Interval(
        0.6,
        0.8,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    final _skipAnimation = Tween<Offset>(begin: const Offset(0, 0), end: const Offset(2, 0))
        .animate(CurvedAnimation(
      parent: animationController,
      curve: const Interval(
        0.6,
        0.8,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    return SlideTransition(
      position: _animation,
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        // ignore: sized_box_for_whitespace
        child: Container(
          height: 58,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SlideTransition(
                  position: _backAnimation,
                  child:
                IconButton(
                  onPressed: onBackClick,
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                     ),
                ),
                
                SlideTransition(

                 position: _skipAnimation,
                    child: IconButton(
                  onPressed: onSkipClick,
                  icon: const Text("Skip"),
                  iconSize: 35,
                     ),
          // TextButton.icon(
          //   icon: Icon(Icons.camera),
          //   label: Text('Skip'),
          //   onPressed:onSkipClick,
          //  style: TextButton.styleFrom(
          //       primary: Colors.white,
          //       ),
          //       ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
