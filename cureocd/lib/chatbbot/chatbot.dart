import 'package:flutter/material.dart';

import 'components/body.dart';

// ignore: camel_case_types
class chatbotScreen extends StatelessWidget {
  const chatbotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}