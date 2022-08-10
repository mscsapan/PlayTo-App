import 'package:flutter/material.dart';
import 'package:play_to_app/src/views/category_details.dart';
import 'package:play_to_app/src/views/category_play_view.dart';
import 'package:play_to_app/src/views/my_app_bar.dart';

import '../views/category_title.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);
  final Color red = Colors.redAccent;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    debugPrint('==== State Calling===');
    return Scaffold(
      appBar: myAppBar(isVisible: false),
      body: SizedBox(
        height: _size.height,
        width: _size.width,
        child: ListView(
          children: const [
            CategoryHeading(
              leftTitle: 'Kategory Olahraga',
              r8Title: '',
            ),
            CategoryPlayView(),
            CategoryDetails(),
          ],
        ),
      ),
    );
  }
}
