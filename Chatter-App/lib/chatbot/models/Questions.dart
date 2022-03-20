class Question {
  final int id;
  final String title;
  final String question;
  final List<String> options;

  Question(
      { this.id,
      this.title,
    this.question,
    this.options});
}

// ignore: constant_identifier_names
const List sample_data = [
  {
    "id": 1,
    "title": "TIME OCCUPIED BY OBSESSIVE THOUGHTS",
    "question":
        "How much of your time is occupied by obsessive thoughts?",
    "options": [
      'None ',
      'Less than 1 hr/day or occasional occurrence',
      '1 to 3 hrs/day or frequent ',
      'Greater than 3 and up to 8 hrs/day or very frequent\n occurrence',
      'Greater than 8 hrs/day or nearly constant occurrence'
    ],
  },
  {
    "id": 2,
    "title": "INTERFERENCE DUE TO OBSESSIVE THOUGHTS",
    "question":
        "How much do your obsessive thoughts interfere with your work, school, social, or other important role functioning?",
    "options": [
      'None ',
      'Slight interference with social or other activities, but overall\nperformance not impaired',
      'Definite interference with social or occupational performance,\nbut still manageable',
      'Causes substantial impairment in social or occupational\nperformance',
      'Incapacitating'
    ],
  },
  {
    "id": 3,
    "title": "DISTRESS ASSOCIATED WITH OBSESSIVE THOUGHTS",
    "question":
        "How much distress do your obsessive thoughts cause you?",
    "options": [
      'None ',
      'Not too disturbing',
      'Disturbing, but still manageable',
      'Very disturbing ',
      'Very disturbing'
    ],
  },
  {
    "id": 4,
    "title": "RESISTANCE AGAINST OBSESSIONS",
    "question":
        "How much of an effort do you make to resist the obsessive thoughts? How often do you try to disregard or turn your attention away from these thoughts as they enter your mind?",
    "options": [
      'Try to resist all the time',
      'Try to resist most of the time',
      'Make some effort to resist',
      'Yield to all obsessions without attempting to control them,\nbut with some reluctance',
      'Completely and willingly yield to all obsessions'
    ],
  },
  {
    "id": 5,
    "title": "DEGREE OF CONTROL OVER OBSESSIVE THOUGHTS",
    "question":
        "How much control do you have over your obsessive thoughts? How successful are you in stopping or diverting your obsessive thinking? Can you dismiss them?",
    "options": [
      'Complete control',
      'Usually able to stop or divert obsessions with some effort and\nconcentration',
      'Sometimes able to stop or divert obsessions',
      'Rarely successful in stopping or dismissing obsessions,\ncan only divert attention with difficulty',
      'Obsessions are completely involuntary, rarely able to even\nmomentarily alter obsessive thinking. '
    ],
  },
  {
    "id": 6,
    "title": "TIME SPENT PERFORMING COMPULSIVE BEHAVIORS",
    "question":
        "How much time do you spend performing compulsive behaviors? How much longer than most people does it take to complete routine activities because of your rituals? How frequently do you do rituals?",
    "options": [
      'None',
      'Less than 1 hr/day or occasional performance of compulsive\nbehaviors',
      'From 1 to 3 hrs/day, or frequent performance of compulsive\nbehaviors',
      'More than 3 and up to 8 hrs/day, or very frequent\nperformance of compulsive behaviors',
      'More than 8 hrs/day, or near constant performance of\ncompulsive behaviors (too numerous to count)'
    ],
  },
  {
    "id": 7,
    "title": "INTERFERENCE DUE TO COMPULSIVE BEHAVIORS",
    "question":
        "How much do your compulsive behaviors interfere with your work, school, social, or other important role functioning? Is there anything that you don’t do because of the compulsions?",
    "options": [
      'None',
      'Slight interference with social or other activities, but overall\nperformance not impaired',
      'Definite interference with social or occupational performance,\nbut still manageable',
      'Causes substantial impairment in social or occupational\nperformance',
      'Incapacitating',
    ],
  },
  {
    "id": 8,
    "title": "DISTRESS ASSOCIATED WITH COMPULSIVE BEHAVIOR",
    "question":
        "How would you feel if prevented from performing your compulsion(s)? How anxious would you become?",
    "options": [
      'None',
      'Only slightly anxious if compulsions prevented',
      'Anxiety would mount but remain manageable if compulsions\nprevented',
      'Prominent and very disturbing increase in anxiety if\ncompulsions interrupted',
      'Incapacitating anxiety from any intervention aimed at\nmodifying activity'
    ],
  },
  {
    "id": 9,
    "title": "RESISTANCE AGAINST COMPULSIONS",
    "question":
        "How much of an effort do you make to resist the compulsions?",
    "options": [
      'Always try to resist',
      'Try to resist most of the time',
      'Make some effort to resist',
      'Yield to all obsessions without attempting to control them, but\nwith some reluctance',
      'Completely and willingly yield to all compulsions'
    ],
  },
  {
    "id": 10,
    "title": "DEGREE OF CONTROL OVER COMPULSIVE BEHAVIOR",
    "question":
        "How much control do you have over the compulsions? ",
    "options": [
      'Complete control',
      'Pressure to perform the behavior but usually able to exercise\nvoluntary control over it ',
      'Strong pressure to perform behavior, can control it only with\ndifficulty',
      'Very strong drive to perform behavior, must be carried to\ncompletion, can only delay with difficulty',
      'Drive to perform behavior experienced as completely\ninvoluntary and over-powering, rarely able to even momentarily\ndelay activity.'
    ],
  },
];
