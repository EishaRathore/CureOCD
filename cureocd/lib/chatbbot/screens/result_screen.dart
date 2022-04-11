import 'package:cureocd/chatbbot/chatbot.dart';
import 'package:cureocd/chatbbot/common/theme_helper.dart';
import 'package:cureocd/chatbbot/ui/shared/color.dart';
import 'package:cureocd/chatbbot/widgets/disco_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  
  late String _resultPrnt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: ThemeHelper.fullScreenBgBoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            quizResultInfo(),
            bottomButtons(),
          ],
        ),
      ),
    );
  }
    Widget bottomButtons() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DiscoButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Close",
              style: TextStyle(color: Colors.deepPurple, fontSize: 20),
            ),
            width: 150,
            height: 50,
          ),
          DiscoButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => chatbotScreen(),
                  ));
            },
            child: Text(
              "Repeat Y-BOCS test",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            width: 200,
            height: 60,
            isActive: true,
          ),
        ],
      ),
    );
  }
  Widget quizResultInfo() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      //backgroundColor: AppColor.pripmaryColor,
     // body: 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "You Score is",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
         
          SizedBox(
            height: 20.0,
          ),
          
          Text(
            "${widget.score} / 40",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            (() {
      if (widget.score >= 0 && widget.score <= 13) {
      _resultPrnt = "mild symptoms";
      return _resultPrnt;
    } else if (widget.score >= 14 && widget.score <= 25) {
      _resultPrnt = "moderate symptoms";
      return _resultPrnt;
    } else if (widget.score >= 26 && widget.score <= 34) {
      _resultPrnt = "moderate-severe symptoms";
      return _resultPrnt;
    } else {
      _resultPrnt = "severe symptoms";
      return _resultPrnt;
    }
    })
    ()),
          SizedBox(
            height: 100.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => chatbotScreen(),
                  ));
            },
            shape: StadiumBorder(),
            color: AppColor.secondaryColor,
            padding: EdgeInsets.all(18.0),
            child: Text(
              "Reapeat the Y-BOCS test",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
 
}
