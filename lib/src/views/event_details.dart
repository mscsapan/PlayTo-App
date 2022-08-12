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
      children: [
        Column(
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
            SizedBox(
              height: _size.height * 0.08,
              width: _size.width * 0.6,
              //color: Colors.red,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const StackImages(),
                  Text(
                    '5 dari 11 Orang',
                    style: GoogleFonts.openSans(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        ElevatedButton(onPressed: () {}, child: const Text('Bala Kaki'))
      ],
    );
  }
}
