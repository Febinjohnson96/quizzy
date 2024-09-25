import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizzy/core/config/app_colors.dart';
import 'package:quizzy/widgets/qz_scaffold_without_padding.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const QzScaffoldWithoutPadding(
      child: SizedBox(
        width: double.infinity,
        child: ColoredBox(
          color: AppColors.deepPurple,
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
