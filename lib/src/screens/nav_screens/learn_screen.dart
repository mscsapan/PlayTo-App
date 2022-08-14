import 'package:flutter/material.dart';

import '../../views/animated_text.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: AnimatedScreenText(text: 'Learn Screen')),
    );
  }
}
