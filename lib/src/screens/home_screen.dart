import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_to_app/src/views/blur_image_view.dart';
import 'package:play_to_app/src/views/category_title.dart';
import 'package:play_to_app/src/views/category_view.dart';
import 'package:play_to_app/src/views/heading_title.dart';

import '../views/my_app_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final Color red = Colors.red;
  final String description = 'Lapangan Trior Kebon Jeruk Jakarta';
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
          children: [
            const HeadingTitle(),
            const BlurImageView(),
            const CategoryHeading(leftTitle: 'Kategory Olahraga'),
            const CategoryView(),
            const SizedBox(height: 10.0),
            const CategoryHeading(leftTitle: 'Booking terfavorite'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const ClampingScrollPhysics(),
              child: Row(
                  children: List.generate(
                6,
                (index) => Container(
                  height: _size.height * 0.12,
                  margin: const EdgeInsets.only(right: 5.0),
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Card(
                      elevation: 6.0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.solidFutbol,
                                  size: 20.0,
                                ),
                                const SizedBox(width: 6.0),
                                Text(
                                  'Yuk Sehat bersama!',
                                  style: GoogleFonts.openSans(
                                    fontSize: 18.0,
                                    letterSpacing: 1.0,
                                    wordSpacing: 0.5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 6.0),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.mapMarker,
                                  size: 20.0,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 6.0),
                                Text(
                                  description,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.openSans(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
