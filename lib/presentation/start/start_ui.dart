import 'package:flutter/material.dart';
import 'package:quizzy/presentation/start/ui/start_screen.dart';

class StartUi extends StatelessWidget {
  const StartUi({super.key, this.subjectName});
  final String? subjectName;

  @override
  Widget build(BuildContext context) {
    return StartScreen(
      subjectName: subjectName,
    );
  }
}
