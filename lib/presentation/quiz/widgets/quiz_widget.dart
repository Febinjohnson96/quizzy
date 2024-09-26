import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzy/core/config/app_colors.dart';
import 'package:quizzy/core/config/app_typography.dart';
import 'package:quizzy/domain/models/quiz/quiz_model.dart';
import 'package:quizzy/utils/app_logger.dart';

class QuizWidget extends StatelessWidget {
  const QuizWidget({super.key, this.quizObject});

  final QuizModel? quizObject;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(quizObject?.question ?? '',
          textAlign: TextAlign.center,
              style:
                  AppTypography.satoshi14w600.copyWith(color: AppColors.white)),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 250.h,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () =>
                            AppLogger.debuglog(quizObject?.options[index] ?? ''),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: AppColors.lightPurple,
                              borderRadius: BorderRadius.circular(18.r)),
                          child: Text(quizObject?.options[index] ?? '',
                              style: AppTypography.satoshi22w400
                                  .copyWith(color: AppColors.white)),
                        ),
                      ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemCount: quizObject?.options.length ?? 0),
            ),
          ),
        ],
      ),
    );
  }
}
