import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizzy/domain/models/quiz/quiz_model.dart';
import 'package:quizzy/utils/app_logger.dart';

part 'quiz_state.dart';
part 'quiz_cubit.freezed.dart';

class QuizCubit extends Cubit<QuizState> {
  QuizCubit() : super(QuizState.initial());

  void onLoadQuiz(String? subjectName) {
    if (subjectName == "Physics") {
      emit(state.copyWith(quiz: physics));
    } else if (subjectName == "Chemistry") {
      emit(state.copyWith(quiz: chemistry));
    } else if (subjectName == "Biology") {
      emit(state.copyWith(quiz: biology));
    } else {
      emit(state.copyWith(quiz: physics));
    }
  }

  void selectAnswer(String answer, int index) {
    AppLogger.debuglog("answer 25 $answer");
    emit(state.copyWith(correctAnswer: false, currentIndex: 0));
    final answerFromState = state.quiz?[index].answer;
    if (answer == answerFromState) {
      AppLogger.debuglog("ans $answer stAns $answerFromState");
      emit(state.copyWith(
          correctAnswer: true,
          currentIndex: index,
          score: state.score! + 10));
    } else {
      AppLogger.debuglog("line 33");
      emit(state.copyWith(
          correctAnswer: false,
          currentIndex: index,
          wrongQuestion: state.quiz?[index]));
    }
    if (index == state.quiz!.length - 1) {
      emit(state.copyWith(lastItem: true));
    }
  }
}
