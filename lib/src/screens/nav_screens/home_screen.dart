import 'package:flutter/material.dart';
import 'package:play_to_app/src/views/blur_image_view.dart';
import 'package:play_to_app/src/views/booking_category.dart';
import 'package:play_to_app/src/views/category_title.dart';
import 'package:play_to_app/src/views/category_view.dart';
import 'package:play_to_app/src/views/heading_title.dart';

import '../../views/my_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final Color red = Colors.red;
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: myAppBar(isVisible: true),
      body: SizedBox(
        height: _size.height,
        width: _size.width,
        //margin: const EdgeInsets.symmetric(horizontal: 14.0),
        child: ListView(
          children: const [
            HeadingTitle(),
            BlurImageView(),
            CategoryHeading(leftTitle: 'Kategory Olahraga'),
            CategoryView(),
            SizedBox(height: 10.0),
            CategoryHeading(leftTitle: 'Booking terfavorite'),
            BookingCategory()
          ],
        ),
      ),
    );
  }
}
