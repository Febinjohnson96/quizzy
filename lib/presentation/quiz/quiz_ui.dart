import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzy/presentation/quiz/cubit/quiz_cubit.dart';
import 'package:quizzy/presentation/quiz/ui/quiz_screen.dart';

class QuizUi extends StatelessWidget {
  const QuizUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<QuizCubit>(
      create: (context) => QuizCubit()..onLoadQuiz(),
      child: const QuizScreen(),
    );
  }
}
