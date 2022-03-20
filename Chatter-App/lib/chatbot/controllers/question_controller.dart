import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vexpocd/chatbot/models/Questions.dart';
import 'package:vexpocd/chatbot/screens/score/score_screen.dart';

// We use get package for our state management

class QuestionController extends GetxController
    // ignore: deprecated_member_use
    with
        SingleGetTickerProviderMixin {
PageController _pageController;
  PageController get pageController => _pageController;

  // ignore: prefer_final_fields
  List<Question> _questions = sample_data
      .map(
        (question) => Question(
          id: question['id'],
          title: question['title'],
          question: question['question'],
          options: question['options'],
        ),
      )
      .toList();
  List<Question> get questions => _questions;

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

  int _selectedAns;
  int get selectedAns => _selectedAns;

  // for more about obs please check documentation
  // ignore: prefer_final_fields
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  var _result = 0;

  get result => _result;

  String _resultPrnt;
  String get resultSet {
    return _resultPrnt = resultPrint();
  }

  // called immediately after the widget is allocated memory
  @override
  void onInit() {
    _pageController = PageController();
    super.onInit();
  }

  // // called just before the Controller is deleted from memory
  @override
  void onClose() {
    super.onClose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    // because once user press any option then it will run
    _isAnswered = true;
    _selectedAns = selectedIndex;

    if (_selectedAns == selectedIndex) {
      _result = selectedIndex + _result;
    }

    // Once user select an ans after 2s it will go to the next qn
    Future.delayed(const Duration(seconds: 2), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: const Duration(milliseconds: 250), curve: Curves.ease);
    } else {
      // Get package provide us simple way to naviigate another page
      Get.to(const ScoreScreen());
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }

  String resultPrint() {
    if (result >= 0 && result <= 13) {
      _resultPrnt = "mild symptoms";
      return _resultPrnt;
    } else if (_result >= 14 && _result <= 25) {
      _resultPrnt = "moderate symptoms";
      return _resultPrnt;
    } else if (_result >= 26 && _result <= 34) {
      _resultPrnt = "moderate-severe symptoms";
      return _resultPrnt;
    } else {
      _resultPrnt = "severe symptoms";
      return _resultPrnt;
    }
  }
}
