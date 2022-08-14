import 'package:flutter/material.dart';
import 'package:play_to_app/src/views/animated_text.dart';

class BookMarkScreen extends StatelessWidget {
  const BookMarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: AnimatedScreenText(text: 'BookMark Screen')),
    );
  }
}
