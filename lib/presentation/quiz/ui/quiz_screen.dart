import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzy/core/config/app_colors.dart';
import 'package:quizzy/core/config/app_typography.dart';
import 'package:quizzy/presentation/quiz/cubit/quiz_cubit.dart';
import 'package:quizzy/utils/app_logger.dart';
import 'package:quizzy/widgets/qz_scaffold_without_padding.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QzScaffoldWithoutPadding(
      child: SizedBox(
        width: double.infinity,
        child: ColoredBox(
          color: AppColors.deepPurple,
          child: BlocBuilder<QuizCubit, QuizState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.quiz?.first.question ?? '',
                      style: AppTypography.satoshi22w400
                          .copyWith(color: AppColors.white)),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 250.h,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () => AppLogger.debuglog(state.quiz?.first.options[index].toString() ?? ''),
                            child: Container(
                              
                                  padding: const EdgeInsets.all(12),
                                  width: double.infinity,
                                  decoration:
                                      BoxDecoration(color: AppColors.lightPurple,
                                      borderRadius: BorderRadius.circular(18.r)
                                      ),
                                  child: Text(
                                      state.quiz?.first.options[index] ?? '',
                                      style: AppTypography.satoshi22w400
                                          .copyWith(color: AppColors.white)),
                                ),
                          ),
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 10),
                          itemCount: state.quiz?.first.options.length ?? 0),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
