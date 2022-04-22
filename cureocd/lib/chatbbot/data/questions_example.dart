import 'package:cureocd/chatbbot/model/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "TIME OCCUPIED BY OBSESSIVE THOUGHTS",
    "How much of your time is occupied by obsessive thoughts?",
    {
      "Less than 1 hr/day or occasional occurrence": 1,
      "1 to 3 hrs/day or frequent ": 2,
      "Greater than 3 and up to 8 hrs/day or very frequent occurrence": 3,
      "Greater than 8 hrs/day or nearly constant occurrence": 4,
      "None ": 0,
    },
  ),
  QuestionModel(
    "INTERFERENCE DUE TO OBSESSIVE THOUGHTS",
    "How much do your obsessive thoughts interfere with your work, school, social, or other important role functioning?",
    {
      'Slight interference with social or other activities, but overall performance not\nimpaired':
          1,
      'Definite interference with social or occupational performance,but still manageable':
          2,
      'Causes substantial impairment in social or occupational performance': 3,
      'Incapacitating': 4,
      'None ': 0,
    },
  ),
  QuestionModel("DISTRESS ASSOCIATED WITH OBSESSIVE THOUGHTS",
      "How much distress do your obsessive thoughts cause you?", {
    'Not too disturbing': 1,
    'Disturbing, but still manageable': 2,
    'Very disturbing ': 3,
    'Very disturbing': 4,
    'None ': 0,
  }),
  QuestionModel(
      "RESISTANCE AGAINST OBSESSIONS",
      "How much of an effort do you make to resist the obsessive thoughts? How often do you try to disregard or turn your attention away from these thoughts as they enter your mind?",
      {
        'Try to resist all the time': 0,
        'Try to resist most of the time': 1,
        'Make some effort to resist': 2,
        'Yield to all obsessions without attempting\nto control them,but with some reluctance':
            3,
        'Completely and willingly yield to all obsessions': 4,
      }),
  QuestionModel(
      "DEGREE OF CONTROL OVER OBSESSIVE THOUGHTS",
      "How much control do you have over your obsessive thoughts? How successful are you in stopping or diverting your obsessive thinking? Can you dismiss them?",
      {
        'Complete control': 0,
        'Usually able to stop or divert obsessions\nwith some effort and concentration':
            1,
        'Sometimes able to stop or divert obsessions': 2,
        'Rarely successful in stopping or dismissing\nobsessions,can only divert attention\nwith difficulty':
            3,
        'Obsessions are completely involuntary,\nrarely able to even momentarily alter\nobsessive thinking. ':
            4,
      }),
  QuestionModel(
      "TIME SPENT PERFORMING COMPULSIVE BEHAVIORS",
      "How much time do you spend performing compulsive behaviors? How much longer than most people does it take to complete routine activities because of your rituals? How frequently do you do rituals?",
      {
        'Less than 1 hr/day or occasional\nperformance of compulsive behaviors':
            1,
        'From 1 to 3 hrs/day, or frequent\nperformance of compulsive behaviors':
            2,
        'More than 3 and up to 8 hrs/day,\nor very frequent performance of\ncompulsive behaviors':
            3,
        'More than 8 hrs/day, or near constant\nperformance of compulsive behaviors\n(too numerous to count)':
            4,
        'None': 0,
      }),
  QuestionModel(
      "INTERFERENCE DUE TO COMPULSIVE BEHAVIORS",
      "How much do your compulsive behaviors interfere with your work, school, social, or other important role functioning? Is there anything that you don’t do because of the compulsions?",
      {
        'Slight interference with social or other\nactivities, but overall performance not impaired':
            1,
        'Definite interference with social or occupational performance,\nbut still manageable':
            2,
        'Causes substantial impairment in social or occupational\nperformance':
            3,
        'Incapacitating': 4,
        'None': 0,
      }),
  QuestionModel(
      "DISTRESS ASSOCIATED WITH COMPULSIVE BEHAVIOR",
      "How would you feel if prevented from performing your compulsion(s)? How anxious would you become?",
      {
        'Only slightly anxious if compulsions prevented': 1,
        'Anxiety would mount but remain manageable if compulsions\nprevented':
            2,
        'Prominent and very disturbing increase in anxiety if\ncompulsions interrupted':
            3,
        'Incapacitating anxiety from any intervention aimed at\nmodifying activity':
            4,
        'None': 0,
      }),
  QuestionModel("RESISTANCE AGAINST COMPULSIONS",
      "How much of an effort do you make to resist the compulsions?", {
    'Always try to resist': 0,
    'Try to resist most of the time': 1,
    'Make some effort to resist': 2,
    'Yield to all obsessions without attempting to control them, but\nwith some reluctance':
        3,
    'Completely and willingly yield to all compulsions': 4,
  }),
  QuestionModel("DEGREE OF CONTROL OVER COMPULSIVE BEHAVIOR",
      "How much control do you have over the compulsions? ", {
    'Complete control': 0,
    'Pressure to perform the behavior but usually able to exercise\nvoluntary control over it ':
        1,
    'Strong pressure to perform behavior, can control it only with\ndifficulty':
        2,
    'Very strong drive to perform behavior, must be carried to\ncompletion, can only delay with difficulty':
        3,
    'Drive to perform behavior experienced as completely\ninvoluntary and over-powering, rarely able to even momentarily\ndelay activity.':
        4,
  }),
];
