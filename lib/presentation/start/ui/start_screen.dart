import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzy/core/config/app_colors.dart';
import 'package:quizzy/core/config/app_typography.dart';
import 'package:quizzy/core/config/route_name.dart';
import 'package:quizzy/gen/assets.gen.dart';
import 'package:quizzy/widgets/app_button.dart';
import 'package:quizzy/widgets/qz_scaffold_without_padding.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QzScaffoldWithoutPadding(
      child: SizedBox(
        width: double.infinity,
        child: ColoredBox(
          color: AppColors.deepPurple,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.images.nerd.path,
                  height: 180.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Ready for Quizzy?",
                  style: AppTypography.satoshi17w600
                      .copyWith(color: AppColors.white),
                ),
                const Spacer(),
                 Align(
                  alignment: Alignment.bottomCenter,
                  child: AppButton(
                    title: "Start Quiz ?",
                    callback: ()=> context.push(RouteName.quiz),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
