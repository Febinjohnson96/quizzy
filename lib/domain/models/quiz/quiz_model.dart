class QuizModel {
  final String question;
  final String answer;
  final List<String> options;

  QuizModel({
    required this.question,
    required this.answer,
    required this.options,
  });
}

List<QuizModel> physics = [
  QuizModel(
    question: 'An object is weightless when it is:',
    answer: ' In freefall',
    options: ['In Motion', 'Being Accelerated', ' In freefall', 'Stationary'],
  ),
  QuizModel(
    question:
        'Which one among the following units cannot be used to express work?',
    answer: ' Newton',
    options: ['Calorie', 'Joule', 'Newton', ' Watt-second'],
  ),
  QuizModel(
    question:
        'How far from your hand has a falling object gone when 2 seconds had already elapsed after releasing it?',
    answer: '19.6 meters',
    options: ['9.8 meters', '19.6 meters', '39.2 meters', '7 meters'],
  ),
  QuizModel(
    question: 'You Have SuccessFully Completed\nThe physics Quiz.',
    answer: ' ',
    options: [],
  ),
];

List<QuizModel> chemistry = [
  QuizModel(
    question: 'What is the chemical name of NH4+?',
    answer: 'Ammonium',
    options: ['Sodium', 'Ammonium', 'Potassium', 'Calcium'],
  ),
  QuizModel(
    question: 'What is the chemical name of CrO42-?',
    answer: 'Chromate',
    options: ['Phosphate', 'Chromate', 'Carbonate', 'Sulfite', 'Sulfate'],
  ),
  QuizModel(
    question: 'OH- can be described as which polyatomic ion?',
    answer: 'Hydroxide',
    options: ['Phosphate', 'Hydroxide', 'Helium', 'Nitrogen'],
  ),
  QuizModel(
    question: 'You Have SuccessFully Completed\nThe chemistry Quiz.',
    answer: ' ',
    options: [],
  ),
];

List<QuizModel> biology = [
  QuizModel(
    question:
        'What do we call the most basic structural unit of living things?',
    answer: 'Cell',
    options: ['DNA', 'Skin', 'Cell', 'Life'],
  ),
  QuizModel(
    question: 'Where is DNA found inside a cell?',
    answer: 'Nucleus',
    options: ['Cytoplasm', 'Nucleus', 'Cell membrane', 'None of the above'],
  ),
  QuizModel(
    question: 'What is an organism?',
    answer: 'A living thing',
    options: [
      'A living thing',
      'An organ',
      'A large group of molecules',
      'An evolutionary unit'
    ],
  ),
  QuizModel(
    question: 'You Have SuccessFully Completed\nThe biology Quiz.',
    answer: ' ',
    options: [],
  ),
];
