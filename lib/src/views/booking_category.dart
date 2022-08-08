import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingCategory extends StatelessWidget {
  const BookingCategory({Key? key}) : super(key: key);
  final String description =
      'Lapangan Trior Kebon Jeruk Jakarta baslaski Istavanto Sikando';

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return SizedBox(
      height: _size.height * 0.12,
      width: _size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        child: Row(
          children: List.generate(
            6,
            (index) => Container(
              width: _size.width * 0.85,
              margin: const EdgeInsets.only(right: 5.0),
              padding: const EdgeInsets.only(left: 10.0),
              child: Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.mapMarkerAlt,
                            size: 20.0,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 6.0),
                          SizedBox(
                            width: _size.width * 0.65,
                            child: Text(
                              description,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.openSans(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
