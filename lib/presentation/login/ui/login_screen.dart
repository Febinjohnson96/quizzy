import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzy/core/config/app_colors.dart';
import 'package:quizzy/core/config/app_typography.dart';
import 'package:quizzy/core/config/route_name.dart';
import 'package:quizzy/presentation/login/cubit/login_cubit.dart';
import 'package:quizzy/widgets/app_button.dart';
import 'package:quizzy/widgets/app_textfield.dart';
import 'package:quizzy/widgets/qz_scaffold_without_padding.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return QzScaffoldWithoutPadding(
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if(state.email!.isNotEmpty && state.password!.isNotEmpty){
            context.go(RouteName.home);
          }
        },
        child: SizedBox(
          width: double.infinity,
          child: ColoredBox(
            color: AppColors.deepPurple,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: AppTypography.satoshi17w600
                        .copyWith(color: AppColors.white),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  AppTextfield(
                    hintText: "Email",
                    controller: emailController,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  AppTextfield(
                    hintText: "Password",
                    controller: passwordController,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  AppButton(
                    title: "Login",
                    callback: () => context.read<LoginCubit>().onClickedLogin(
                        email: emailController.text,
                        password: passwordController.text),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
