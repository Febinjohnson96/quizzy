import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzy/presentation/home/cubit/home_cubit.dart';
import 'package:quizzy/presentation/home/ui/home_screen.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit()..onLoadHome(),
      child: const HomeScreen(),
    );
  }
}
