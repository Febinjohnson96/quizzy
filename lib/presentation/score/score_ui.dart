import 'package:flutter/material.dart';
import 'package:quizzy/data/params/score_screen_params.dart';
import 'package:quizzy/presentation/score/ui/score_screen.dart';

class ScoreUi extends StatelessWidget {
  const ScoreUi({super.key, this.params});

  final ScoreScreenParams? params;

  @override
  Widget build(BuildContext context) {
    return ScoreScreen(
      params: params,
    );
  }
}
