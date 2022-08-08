import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlurImageView extends StatelessWidget {
  const BlurImageView({Key? key}) : super(key: key);
  final String image = 'assets/images/female-running-stairs.jpg';
  final String title = 'Mulai berolahraga dan\nmencari teman bersama';

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * 0.3,
      width: _size.width,
      margin: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            top: _size.height * 0.14,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w400,
                          height: 1.4,
                          letterSpacing: 1.0,
                          wordSpacing: 1.5),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent,
                      ),
                      child: Text(
                        'Lihat sekarang',
                        style:
                            GoogleFonts.openSans(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
