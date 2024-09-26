import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzy/core/config/app_colors.dart';
import 'package:quizzy/presentation/quiz/cubit/quiz_cubit.dart';
import 'package:quizzy/presentation/quiz/widgets/quiz_widget.dart';
import 'package:quizzy/widgets/qz_scaffold_without_padding.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QzScaffoldWithoutPadding(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ColoredBox(
          color: AppColors.deepPurple,
          child: BlocBuilder<QuizCubit, QuizState>(
            builder: (context, state) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: state.quiz?.length ?? 0,
                  itemBuilder: (context, index) {
                    return QuizWidget(quizObject: state.quiz?[index]);
                  });
            },
          ),
        ),
      ),
    );
  }
}
