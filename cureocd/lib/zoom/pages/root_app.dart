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
     // appBar: getBody(),
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: headerAndFooter,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Octicons.mute,
                color: grey,
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(
                AntDesign.camera,
                color: grey,
              )
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.security_outlined,
                color: green,
                size: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Zoom",
                style: TextStyle(
                    fontSize: 17, color: grey, fontWeight: FontWeight.bold),
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                color: grey,
                size: 20,
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const HomeMain()),
                  (route) => false);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: red, borderRadius: BorderRadius.circular(8)),
              child: const Padding(
                padding: EdgeInsets.only(
                    left: 12, right: 12, top: 5, bottom: 5),
                child: const Text("Leave",
                    style: TextStyle(
                        fontSize: 15,
                        color: grey,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
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
                          "https://images.unsplash.com/photo-1543486958-d783bfbf7f8e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8c2VsZmllfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
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
                          "https://yt3.ggpht.com/yti/ANoDKi7t8UDpIBhR4vFhxH8woiUdojAZ-8kqhQKj3kki7g=s108-c-k-c0x00ffffff-no-rj"),
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
