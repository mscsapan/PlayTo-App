import 'package:flutter/material.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Learn Screen',
          style:
              Theme.of(context).textTheme.headline1!.copyWith(fontSize: 30.0),
        ),
      ),
    );
  }
}
