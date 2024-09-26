import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzy/core/config/app_colors.dart';
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
                      onAnswerSelected: () => _scrollToNextIndex(index),
                    ),
                  );
                },
              );
            },
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
