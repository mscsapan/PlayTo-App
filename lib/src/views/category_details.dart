import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_to_app/src/data/data_list.dart';

class CategoryDetails extends StatelessWidget {
  const CategoryDetails({Key? key}) : super(key: key);
  final String description =
      'Lapangan Trior Kebon Jeruk Jakarta baslaski Istavanto Sikando';

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * 0.34,
      width: _size.width,
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Card(
        elevation: 6.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: '⚽ '),
                    TextSpan(
                      text: 'Yuk sehat bersama',
                      style: GoogleFonts.openSans(
                        fontSize: 16.0,
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.mapMarkerAlt,
                    size: 20.0,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 5.0),
                  Flexible(
                    child: Text(
                      description,
                      style: GoogleFonts.openSans(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.2,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  eventTitle.length,
                  (index) => Container(
                    width: _size.width / 2.4,
                    height: _size.height * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FaIcon(
                            eventIcons[index],
                            size: 18.0,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          Text(
                            eventTitle[index],
                            style: GoogleFonts.openSans(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
