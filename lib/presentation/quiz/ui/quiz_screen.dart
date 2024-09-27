import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzy/core/config/app_colors.dart';
import 'package:quizzy/core/config/route_name.dart';
import 'package:quizzy/data/params/score_screen_params.dart';
import 'package:quizzy/presentation/quiz/cubit/quiz_cubit.dart';
import 'package:quizzy/presentation/quiz/widgets/quiz_widget.dart';
import 'package:quizzy/widgets/qz_scaffold_without_padding.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToNextIndex(int currentIndex) {
    final itemCount = context.read<QuizCubit>().state.quiz?.length ?? 0;

    if (currentIndex < itemCount - 1) {
      double itemWidth = MediaQuery.of(context).size.width;

      double targetScrollPosition = (currentIndex + 1) * itemWidth;

      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          targetScrollPosition,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return QzScaffoldWithoutPadding(
      child: BlocListener<QuizCubit, QuizState>(
        listener: (context, state) {
          if (state.correctAnswer != null) {
            int currentIndex = state.currentIndex ?? 0;

            // _scrollToNextIndex(currentIndex);
            if (state.correctAnswer == true) {
              _scrollToNextIndex(currentIndex);
            } else if (state.lastItem == true) {
              context.push(RouteName.score,
                  extra: ScoreScreenParams(
                    score: state.score ?? 0,
                    wrongQuestion: state.wrongQuestion,
                  ));
              // WidgetsBinding.instance.addPostFrameCallback((_) {
              //   Fluttertoast.showToast(
              //     msg: "Wrong answer",
              //     toastLength: Toast.LENGTH_SHORT,
              //     gravity: ToastGravity.BOTTOM,
              //     backgroundColor: Colors.black.withOpacity(0.7),
              //     textColor: Colors.white,
              //     fontSize: 16.0,
              //   );
              // });
            }
          }
        },
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: ColoredBox(
            color: AppColors.deepPurple,
            child: BlocBuilder<QuizCubit, QuizState>(
              builder: (context, state) {
                if (state.quiz == null || state.quiz!.isEmpty) {
                  return const Center(
                    child: Text(
                      'No quizzes available',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  );
                }

                return ListView.builder(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.quiz?.length ?? 0,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: QuizWidget(
                        quizObject: state.quiz?[index],
                        onAnswerSelected: (p0) =>
                            context.read<QuizCubit>().selectAnswer(p0, index),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
