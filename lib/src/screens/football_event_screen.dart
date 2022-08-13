import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_to_app/src/data/data_list.dart';
import 'package:play_to_app/src/views/heading_title.dart';

class FootBallEventScreen extends StatelessWidget {
  const FootBallEventScreen({Key? key}) : super(key: key);
  final Color red = Colors.red;
  final String subTitle =
      'Jalan Urip Sumoharjo, benkali banka\nbelitung, babel';

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 24.0,
            icon: const Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 24.0,
            icon: const Icon(
              FontAwesomeIcons.ellipsisV,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        height: _size.height,
        width: _size.width,
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bala Kaki',
              style: GoogleFonts.openSans(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '⚽ Yuk sehat bersama!',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
                letterSpacing: 0.8,
              ),
            ),
            Container(
              height: _size.height * 0.22,
              width: _size.width,
              margin: const EdgeInsets.only(top: 15.0),
              child: Card(
                elevation: 6.0,
                shadowColor: Colors.white70,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: _size.height * 0.1,
                      width: _size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            margin: const EdgeInsets.only(right: 10.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green.withOpacity(0.2),
                                border: Border.all(
                                  color: Colors.green,
                                  width: 2.0,
                                )),
                            child: FaIcon(
                              FontAwesomeIcons.calendarDay,
                              color: Colors.green.withOpacity(0.8),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Jadwal',
                                style: GoogleFonts.openSans(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.0,
                                ),
                              ),
                              const SizedBox(height: 6.0),
                              Text(
                                eventDate[1],
                                style: GoogleFonts.openSans(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Divider(
                        color: Colors.grey,
                        height: 4.0,
                        thickness: 2.0,
                      ),
                    ),
                    Container(
                      height: _size.height * 0.1,
                      width: _size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            margin: const EdgeInsets.only(right: 10.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.pinkAccent.withOpacity(0.2),
                                border: Border.all(
                                  color: Colors.pinkAccent,
                                  width: 2.0,
                                )),
                            child: FaIcon(
                              FontAwesomeIcons.mapMarkerAlt,
                              color: Colors.pinkAccent.withOpacity(0.8),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Lakasi',
                                style: GoogleFonts.openSans(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.0,
                                ),
                              ),
                              const SizedBox(height: 6.0),
                              Text(
                                subTitle,
                                style: GoogleFonts.openSans(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
