import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_to_app/src/data/data_list.dart';

class FootBallEventScreen extends StatelessWidget {
  const FootBallEventScreen({Key? key}) : super(key: key);
  final Color red = Colors.red;
  final String subTitle =
      'Jalan Urip Sumoharjo, benkali banka\nbelitung, babel';
  final String addText = 'Tambah pengeluaran untak\nkegiatagan olahraga';

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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.6),
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
            Container(
              height: _size.height * 0.12,
              width: _size.width,
              margin: const EdgeInsets.only(top: 12.0),
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.5),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45.0,
                    width: 45.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 28.0,
                    ),
                  ),
                  Text(
                    addText,
                    style: GoogleFonts.openSans(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
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
            Container(
              height: _size.height * 0.2,
              width: _size.width,
              // color: red,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              // padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Card(
                elevation: 6.0,
                shadowColor: Colors.white70,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      Container(
                        height: _size.height * 0.16,
                        width: _size.width / 3.5,
                        margin: const EdgeInsets.only(right: 12.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/images/1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Mohammad Ali'),
                              Chip(
                                label: Text('Host'),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              )
                            ],
                          ),
                          Text('Pemula'),
                          Row(
                            children: [
                              Text('Lihat reputashi pemain'),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 10.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
