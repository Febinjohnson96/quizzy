import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzy/core/config/app_colors.dart';
import 'package:quizzy/gen/assets.gen.dart';
import 'package:quizzy/presentation/splash/cubit/splash_cubit.dart';
import 'package:quizzy/widgets/qz_scaffold_without_padding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QzScaffoldWithoutPadding(
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state.routeName != null) {
            context.push(state.routeName ?? '');
          }
        },
        child: ColoredBox(
          color: AppColors.purple,
          child: Center(
            child: SvgPicture.asset(Assets.svg.logo),
          ),
        ),
      ),
    );
  }
}
