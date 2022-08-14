import 'package:flutter/material.dart';

import '../../views/animated_text.dart';

class MeetScreen extends StatelessWidget {
  const MeetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: AnimatedScreenText(text: 'Meet Screen')),
    );
  }
}
