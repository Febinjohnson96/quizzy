import 'package:quizzy/domain/models/quiz/quiz_model.dart';

class ScoreScreenParams {
  final int score;
  final QuizModel? wrongQuestion;
  // final String? subjectName;
  ScoreScreenParams(
      {required this.score,
      required this.wrongQuestion,
      // required this.subjectName
      });
}
