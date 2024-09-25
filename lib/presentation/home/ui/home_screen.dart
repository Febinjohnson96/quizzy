import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzy/core/config/app_colors.dart';
import 'package:quizzy/core/config/app_typography.dart';
import 'package:quizzy/core/config/route_name.dart';
import 'package:quizzy/presentation/home/cubit/home_cubit.dart';
import 'package:quizzy/presentation/home/widget/subject_card.dart';
import 'package:quizzy/widgets/qz_scaffold_without_padding.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QzScaffoldWithoutPadding(
      child: SizedBox(
        width: double.infinity,
        child: ColoredBox(
          color: AppColors.deepPurple,
          child: BlocListener<HomeCubit, HomeState>(
            listener: (context, state) {
              if (state.selectedsubject != null) {
                context.push(RouteName.start, extra: state.selectedsubject);
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Subjects'.toUpperCase(),
                  style: AppTypography.satoshi22w4700
                      .copyWith(color: AppColors.white),
                ),
                Expanded(
                    child: Align(
                  alignment: Alignment.center,
                  child: BlocBuilder<HomeCubit, HomeState>(
                    builder: (context, state) {
                      return GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) => Center(
                          child: GestureDetector(
                            onTap: () {
                              context.read<HomeCubit>().onClickedSubject(
                                  state.subjects?[index].name ?? '');
                            },
                            child: SubjectCard(
                              image: state.subjects?[index].image ?? '',
                              title: state.subjects?[index].name ?? '',
                            ),
                          ),
                        ),
                        itemCount: state.subjects?.length,
                      );
                    },
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
