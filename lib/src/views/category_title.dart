import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryHeading extends StatelessWidget {
  const CategoryHeading(
      {Key? key, this.leftTitle, this.r8Title = 'Lihat Semau'})
      : super(key: key);
  final String? leftTitle;
  final String r8Title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftTitle!,
            style: GoogleFonts.openSans(
              letterSpacing: 1.0,
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
            ),
          ),
          Text(
            r8Title,
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
