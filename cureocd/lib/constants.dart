import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Color.fromARGB(255, 0, 163, 173),
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  hintStyle:
      TextStyle(fontFamily: 'Poppins', fontSize: 14, color: Colors.white),
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(

    // border: Border(
    //   top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    // ),
    );
