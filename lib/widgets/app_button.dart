import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzy/core/config/app_colors.dart';
import 'package:quizzy/core/config/app_typography.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    this.callback,
  });

  final String title;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callback?.call(),
      child: Container(
        height: 60.h,
        width: 327.w,
        decoration: BoxDecoration(
          color: AppColors.purple,
          borderRadius: BorderRadius.circular(18.r),
        ),
        child: Center(
          child: Text(
            title,
            style: AppTypography.satoshi17w600.copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
