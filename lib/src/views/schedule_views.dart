import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:play_to_app/src/views/text_style.dart';

import '../data/data_list.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({Key? key}) : super(key: key);
  final String subTitle =
      'Jalan Urip Sumoharjo, benkali banka\nbelitung, babel';

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
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
                      Text('Jadwal', style: textStyle2()),
                      const SizedBox(height: 6.0),
                      Text(
                        eventDate[1],
                        style: textStyle(),
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
                        style: textStyle2(),
                      ),
                      const SizedBox(height: 6.0),
                      Text(
                        subTitle,
                        style: textStyle(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
