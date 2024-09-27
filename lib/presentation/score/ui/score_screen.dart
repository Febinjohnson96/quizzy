import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzy/core/config/app_colors.dart';
import 'package:quizzy/core/config/app_typography.dart';
import 'package:quizzy/data/params/score_screen_params.dart';
import 'package:quizzy/widgets/qz_scaffold_without_padding.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key, this.params});
  final ScoreScreenParams? params;

  @override
  Widget build(BuildContext context) {
    return QzScaffoldWithoutPadding(
      child: SizedBox(
        width: double.infinity,
        child: ColoredBox(
          color: AppColors.deepPurple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You have Completed the Quiz",
                  style: AppTypography.satoshi17w600
                      .copyWith(color: Colors.white)),
              Text("Score : ${params?.score}",
                  style: AppTypography.satoshi17w600
                      .copyWith(color: AppColors.white)),
              SizedBox(
                height: 20.h,
              ),
              if(params?.wrongQuestion != null) Text("WrongAnswer",
                  style: AppTypography.satoshi17w600
                      .copyWith(color: AppColors.white)),

              if(params?.wrongQuestion != null)  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${params?.wrongQuestion?.question}",
                textAlign: TextAlign.center,
                style: AppTypography.satoshi17w600.copyWith(color: AppColors.white),
                ),
              )      
            ],
          ),
        ),
      ),
    );
  }
}
