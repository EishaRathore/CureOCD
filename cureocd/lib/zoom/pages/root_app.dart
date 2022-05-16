import 'package:cureocd/Homemain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cureocd/zoom/json/root_app_json.dart';
import 'package:cureocd/zoom/pages/participants_page.dart';
import 'package:cureocd/zoom/theme/colors.dart';
import 'package:flutter_icons/flutter_icons.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: getAppBar(),
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  getAppBar() {
    return AppBar(
      backgroundColor: black,
      elevation: 0,
      leading: GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/JoinMeetingPage'),
        child: const Padding(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Text(
            "Close",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      // title: const Text("Join a Meeting"),
    );
  }

  // Widget getAppBar() {
  //   return AppBar(
  //     backgroundColor: headerAndFooter,
  //     title: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Row(
  //           children: const [
  //             Icon(
  //               Octicons.mute,
  //               color: grey,
  //             ),
  //             SizedBox(
  //               width: 15,
  //             ),
  //             Icon(
  //               AntDesign.camera,
  //               color: grey,
  //             )
  //           ],
  //         ),
  //         Row(
  //           children: const [
  //             Icon(
  //               Icons.security_outlined,
  //               color: green,
  //               size: 15,
  //             ),
  //             SizedBox(
  //               width: 5,
  //             ),
  //             Text(
  //               "Zoom",
  //               style: TextStyle(
  //                   fontSize: 17, color: grey, fontWeight: FontWeight.bold),
  //             ),
  //             Icon(
  //               Icons.keyboard_arrow_down,
  //               color: grey,
  //               size: 20,
  //             ),
  //           ],
  //         ),
  //         GestureDetector(
  //           onTap: () {
  //             Navigator.pushAndRemoveUntil(
  //                 context,
  //                 MaterialPageRoute(builder: (_) => const HomeMain()),
  //                 (route) => false);
  //           },
  //           child: Container(
  //             decoration: BoxDecoration(
  //                 color: red, borderRadius: BorderRadius.circular(8)),
  //             child: const Padding(
  //               padding:
  //                   EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 5),
  //               child: Text("Leave",
  //                   style: TextStyle(
  //                       fontSize: 15,
  //                       color: grey,
  //                       fontWeight: FontWeight.w600)),
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          // Image.asset('assets/images/woman_therapist1.jpg'),
          Positioned(
            top: 15,
            right: 15,
            child: Container(
              width: 120,
              height: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://www.incimages.com/uploaded_files/image/1920x1080/getty_81860234_970647970450057_56612.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.mind-diagnostics.org/uploads/mind-diagnostics/images/image/url/difference-between-therapist-2-resize.jpg"),
                      fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }

  Widget getFooter() {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: headerAndFooter,
          border: Border(
              top: BorderSide(width: 2, color: black.withOpacity(0.06)))),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(textItems.length, (index) {
            return InkWell(
                onTap: () {
                  selectedTab(index);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(bottomItems[index],
                        size: sizedItems[index], color: colorItems[index]),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      textItems[index],
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: colorItems[index]),
                    )
                  ],
                ));
          }),
        ),
      ),
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });

    if (index == 3) {
      Navigator.push(
          context,
          MaterialPageRoute(
              fullscreenDialog: true, builder: (_) => ParticipantsPage()));
    }
    if (index == 4) {
      getBottomSheet();
    }
  }

  getBottomSheet() {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
              actions: List.generate(actionSheetItems.length, (index) {
                if (actionSheetItems[index] == "Disconnect Audio") {
                  return CupertinoActionSheetAction(
                    child: Text(
                      actionSheetItems[index],
                      style: const TextStyle(color: red),
                    ),
                    onPressed: () {
                      Navigator.pop(context, 'One');
                    },
                  );
                } else if (actionSheetItems[index] ==
                    "👏   👍   💔   🤣   😮   🎉") {
                  return CupertinoActionSheetAction(
                    child: Text(
                      actionSheetItems[index],
                      style: const TextStyle(fontSize: 25),
                    ),
                    onPressed: () {
                      Navigator.pop(context, 'One');
                    },
                  );
                }
                return CupertinoActionSheetAction(
                  child: Text(actionSheetItems[index]),
                  onPressed: () {
                    Navigator.pop(context, 'One');
                  },
                );
              }),
              cancelButton: CupertinoActionSheetAction(
                child: const Text(
                  'Cancel',
                ),
                isDefaultAction: true,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ));
  }
}
