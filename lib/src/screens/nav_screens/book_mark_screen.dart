import 'package:flutter/material.dart';

class BookMarkScreen extends StatelessWidget {
  const BookMarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'BookMark Screen',
          style:
              Theme.of(context).textTheme.headline1!.copyWith(fontSize: 30.0),
        ),
      ),
    );
  }
}
