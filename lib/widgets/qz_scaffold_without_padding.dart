import 'package:flutter/material.dart';

class QzScaffoldWithoutPadding extends StatelessWidget {
  const QzScaffoldWithoutPadding({super.key, required this.child, this.bottomNavigationBar});

  final Widget child;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar,
      body: SafeArea(
        child: child,
      ),
    );
  }
}
