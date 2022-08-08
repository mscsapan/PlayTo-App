import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_to_app/src/views/blur_image_view.dart';
import 'package:play_to_app/src/views/category_title.dart';
import 'package:play_to_app/src/views/category_view.dart';
import 'package:play_to_app/src/views/heading_title.dart';

import '../views/my_app_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final Color red = Colors.red;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: myAppBar(),
      body: SizedBox(
        height: _size.height,
        width: _size.width,
        //margin: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HeadingTitle(),
            BlurImageView(),
            CategoryHeading(),
            CategoryView(),
          ],
        ),
      ),
    );
  }
}
