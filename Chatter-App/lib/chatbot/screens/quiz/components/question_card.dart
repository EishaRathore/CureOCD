import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vexpocd/chatbot/controllers/question_controller.dart';
import 'package:vexpocd/chatbot/models/Questions.dart';

import '../../../constants.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const QuestionCard({
    // it means we have to pass this
   this.question,
  }) : super();

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
           const SizedBox(height: kDefaultPadding ),
          Text(
            question.title,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.black, ),
                
          ),
          const SizedBox(height: kDefaultPadding ),
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(color: kBlackColor),
          ),
          const SizedBox(height: kDefaultPadding / 2),
           ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
