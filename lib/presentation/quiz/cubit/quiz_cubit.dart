import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizzy/domain/models/quiz/quiz_model.dart';

part 'quiz_state.dart';
part 'quiz_cubit.freezed.dart';

class QuizCubit extends Cubit<QuizState> {
  QuizCubit() : super(QuizState.initial());

  void onLoadQuiz() {
    emit(state.copyWith(quiz: physics));
  }
}
