import 'package:flutter/material.dart';
import 'package:quizzy/widgets/qz_scaffold_with_padding.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const QzScaffold(
      child: Center(
        child: Text('Home'),
      ),
    );
  }
}