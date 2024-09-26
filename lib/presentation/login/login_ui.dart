import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzy/presentation/login/cubit/login_cubit.dart';
import 'package:quizzy/presentation/login/ui/login_screen.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(),
      child: const LoginScreen(),
    );
  }
}
