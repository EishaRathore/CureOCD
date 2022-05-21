import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

/*void main() {
  runApp(MyApp());
// }*/
// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': "TIME OCCUPIED BY OBSESSIVE THOUGHTS\n"
          'How much of your time is occupied by obsessive thoughts?',
      'answers': [
        {'text': 'Less than 1 hr/day or occasional occurrence', 'score': 1},
        {'text': '1 to 3 hrs/day or frequent', 'score': 2},
        {
          'text':
              'Greater than 3 and up to 8 hrs/day or very frequent occurrence',
          'score': 3
        },
        {
          'text': 'Greater than 8 hrs/day or nearly constant occurrence',
          'score': 4
        },
        {'text': 'None', 'score': 0}
      ]
    },
    {
      'questionText': "INTERFERENCE DUE TO OBSESSIVE THOUGHTS\n"
          'How much do your obsessive thoughts interfere with your work, school, social, or other important role functioning?',
      'answers': [
        {
          'text':
              'Slight interference with social or other activities,\n but overall performance not impaired',
          'score': 1
        },
        {
          'text':
              'Definite interference with social or occupational\nperformance,but still manageable',
          'score': 2
        },
        {
          'text':
              'Causes substantial impairment in social or\n occupational performance',
          'score': 3
        },
        {'text': 'Incapacitating', 'score': 4},
        {'text': 'none', 'score': 0}
      ]
    },
    {
      'questionText': "DISTRESS ASSOCIATED WITH OBSESSIVE THOUGHTS\n"
          "How much distress do your obsessive thoughts cause you?",
      'answers': [
        {'text': 'Not too disturbing', 'score': 1},
        {'text': 'Not too disturbing', 'score': 2},
        {'text': 'Disturbing, but still manageable', 'score': 3},
        {'text': ' Too much disturbing', 'score': 4},
        {'text': 'None', 'score': 0},
      ]
    },
    {
      'questionText': "RESISTANCE AGAINST OBSESSIONS\n"
          "How much of an effort do you make to resist the obsessive thoughts? How often do you try to disregard or turn your attention away from these thoughts as they enter your mind?",
      'answers': [
        {'text': 'Try to resist all the time', 'score': 0},
        {'text': 'Try to resist most of the time', 'score': 1},
        {'text': 'Make some effort to resist', 'score': 2},
        {
          'text':
              'Yield to all obsessions without attempting\nto control them,but with some reluctance',
          'score': 3
        },
        {'text': 'Completely and willingly yield to all obsessions', 'score': 4}
      ]
    },
    {
      'questionText': 'DEGREE OF CONTROL OVER OBSESSIVE THOUGHTS\n'
          "How much control do you have over your obsessive thoughts? How successful are you in stopping or diverting your obsessive thinking? Can you dismiss them?",
      'answers': [
        {'text': 'Complete control', 'score': 0},
        {
          'text':
              'Usually able to stop or divert obsessions\nwith some effort and concentration',
          'score': 1
        },
        {'text': 'Sometimes able to stop or divert obsessions', 'score': 2},
        {
          'text':
              'Rarely successful in stopping or dismissing\nobsessions,can only divert attention\nwith difficulty',
          'score': 3
        },
        {
          'text':
              'Obsessions are completely involuntary,\nrarely able to even momentarily alter\nobsessive thinking',
          'score': 4
        }
      ]
    },
    {
      'questionText': "TIME SPENT PERFORMING COMPULSIVE BEHAVIORS\n"
          'How much time do you spend performing compulsive behaviors? How much longer than most people does it take to complete routine activities because of your rituals? How frequently do you do rituals?',
      'answers': [
        {
          'text':
              'Less than 1 hr/day or occasional\nperformance of compulsive behaviors',
          'score': 1
        },
        {
          'text':
              'From 1 to 3 hrs/day, or frequent\nperformance of compulsive behaviors',
          'score': 2
        },
        {
          'text':
              'More than 3 and up to 8 hrs/day,\nor very frequent performance of\ncompulsive behaviors',
          'score': 3
        },
        {
          'text':
              'More than 8 hrs/day, or near constant\nperformance of compulsive behaviors\n(too numerous to count)',
          'score': 4
        },
        {'text': 'None', 'score': 0}
      ]
    },
    {
      'questionText': "INTERFERENCE DUE TO COMPULSIVE BEHAVIORS\n"
          'How much do your compulsive behaviors interfere with your work, school, social, or other important role functioning? Is there anything that you don’t do because of the compulsions?',
      'answers': [
        {
          'text':
              'Slight interference with social or other\nactivities, but overall performance not impaired',
          'score': 1
        },
        {
          'text':
              'Definite interference with social or occupational performance,\nbut still manageable',
          'score': 2
        },
        {
          'text':
              'Causes substantial impairment in social or occupational\nperformance',
          'score': 3
        },
        {'text': 'Incapacitating', 'score': 4},
        {'text': 'None', 'score': 0}
      ]
    },
    {
      'questionText': "DISTRESS ASSOCIATED WITH COMPULSIVE BEHAVIOR\n"
          'How would you feel if prevented from performing your compulsion(s)? How anxious would you become?',
      'answers': [
        {'text': 'Only slightly anxious if compulsions prevented', 'score': 1},
        {
          'text':
              'Anxiety would mount but remain manageable if compulsions\nprevented',
          'score': 2
        },
        {
          'text':
              'Prominent and very disturbing increase in anxiety if\ncompulsions interrupted',
          'score': 3
        },
        {
          'text':
              'Incapacitating anxiety from any intervention aimed at\nmodifying activity',
          'score': 4
        },
        {'text': 'None', 'score': 0}
      ]
    },
    {
      'questionText': "RESISTANCE AGAINST COMPULSIONS\n"
          'How much of an effort do you make to resist the compulsions?',
      'answers': [
        {'text': 'Always try to resist', 'score': 0},
        {'text': 'Try to resist most of the time', 'score': 1},
        {'text': 'Make some effort to resist', 'score': 2},
        {
          'text':
              'Yield to all obsessions without attempting to control them, but\nwith some reluctance',
          'score': 3
        },
        {
          'text': 'Completely and willingly yield to all compulsions',
          'score': 4
        }
      ]
    },
    {
      'questionText': "DEGREE OF CONTROL OVER COMPULSIVE BEHAVIOR\n"
          'How much control do you have over the compulsions? ',
      'answers': [
        {'text': 'Complete control', 'score': 0},
        {
          'text':
              'Pressure to perform the behavior but usually able to exercise\nvoluntary control over it',
          'score': 1
        },
        {
          'text':
              'Strong pressure to perform behavior, can control it only with\ndifficulty',
          'score': 2
        },
        {
          'text':
              'Very strong drive to perform behavior, must be carried to\ncompletion, can only delay with difficulty',
          'score': 3
        },
        {
          'text':
              'Drive to perform behavior experienced as completely\ninvoluntary and over-powering, rarely able to even momentarily\ndelay activity.',
          'score': 4
        }
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('_questionIndex:$_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
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
          // actions: [
          //   IconButton(
          //     // alignment: Alignment.topRight,
          //     icon: const Icon(
          //       Icons.chat,
          //       color: Color.fromARGB(255, 255, 254, 254),
          //     ),
          //     onPressed: () => Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => ChatterScreen(),
          //         )),
          //     //   padding:  new EdgeInsets.all(0.0),
          //   ),
          // ],
          title: const Text(
            'CureOCD',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        // appBar: AppBar(
        //   title: Text('Quiz App'),
        // ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestions: _answerQuestions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
