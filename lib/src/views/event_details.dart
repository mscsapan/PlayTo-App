import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_to_app/src/views/stack_images.dart';

class EventCategory extends StatelessWidget {
  const EventCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: _size.width * 0.56,
          margin: const EdgeInsets.only(top: 10.0),
          //  color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pemain terkumpul',
                style: GoogleFonts.openSans(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0,
                ),
              ),
              const SizedBox(height: 15.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const StackImages(),
                  Text(
                    '5 dari 11 Orang',
                    style: GoogleFonts.openSans(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          width: _size.width * 0.28,
          margin: const EdgeInsets.only(top: 40.0),
          //color: Colors.red,
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Bola Kaki',
              style: GoogleFonts.openSans(
                  fontSize: 14.0, fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}
