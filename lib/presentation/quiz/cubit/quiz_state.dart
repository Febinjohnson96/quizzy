part of 'quiz_cubit.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    List<QuizModel>? quiz,
    bool? correctAnswer,
    int? currentIndex,
  }) = _QuizState;
  factory QuizState.initial() {
    return const QuizState(
      quiz: [],
      correctAnswer: false,
      currentIndex: 0,
    );
  }
}
