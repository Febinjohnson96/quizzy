part of 'quiz_cubit.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    String? test,
  }) = _QuizState;
  factory QuizState.initial() {
    return const QuizState(test: '');
  }
}
