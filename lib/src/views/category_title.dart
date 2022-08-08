import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryHeading extends StatelessWidget {
  const CategoryHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Kategory Olahraga',
            style: GoogleFonts.openSans(
                letterSpacing: 1.2,
                fontWeight: FontWeight.w600,
                fontSize: 18.0),
          ),
          Text(
            'Lihat Semau',
            style: GoogleFonts.openSans(
              decoration: TextDecoration.underline,
              decorationThickness: 4,
              decorationColor: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
              letterSpacing: 0.6,
            ),
          ),
        ],
      ),
    );
  }
}
