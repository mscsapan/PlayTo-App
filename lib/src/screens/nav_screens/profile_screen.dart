import 'package:flutter/material.dart';
import 'package:play_to_app/src/views/animated_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AnimatedScreenText(),
      ),
    );
  }
}
