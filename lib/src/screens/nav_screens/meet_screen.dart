import 'package:flutter/material.dart';

class MeetScreen extends StatelessWidget {
  const MeetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Meet Screen',
          style:
              Theme.of(context).textTheme.headline1!.copyWith(fontSize: 30.0),
        ),
      ),
    );
  }
}
