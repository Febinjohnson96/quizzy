import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzy/presentation/splash/cubit/splash_cubit.dart';
import 'package:quizzy/presentation/splash/ui/splash_screen.dart';

class SplashUi extends StatelessWidget {
  const SplashUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (context) => SplashCubit()..onLoadSplash(),
      child: const SplashScreen(),
    );
  }
}
