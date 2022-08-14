import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_to_app/src/views/footbal_bottom_nav.dart';
import 'package:play_to_app/src/views/host_view.dart';
import 'package:play_to_app/src/views/schedule_views.dart';

import '../views/add_event_view.dart';
import '../views/my_app_bar.dart';
import '../views/text_style.dart';

class FootBallEventScreen extends StatelessWidget {
  const FootBallEventScreen({Key? key}) : super(key: key);
  final Color red = Colors.red;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: footBallAppBar(),
      body: Container(
        height: _size.height,
        width: _size.width,
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bala Kaki',
              style: textStyle(),
            ),
            Text(
              '⚽ Yuk sehat bersama!',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
                letterSpacing: 0.8,
              ),
            ),
            const ScheduleView(),
            const AddEventView(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pemain (3/11)',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    letterSpacing: 0.8,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      primary: Colors.white,
                      backgroundColor: Colors.pink),
                  onPressed: () {},
                  child: const Text(
                    'Tambah Pemain',
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
              ],
            ),
            const HostView()
          ],
        ),
      ),
      bottomNavigationBar: const FootBallBottomNavBar(),
    );
  }
}
