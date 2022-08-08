import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingTitle extends StatelessWidget {
  const HeadingTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello, Ali 👏',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
          Text(
            'Welcome back!',
            style: GoogleFonts.poppins(
                fontSize: 22.0,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
