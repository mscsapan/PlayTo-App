import 'package:flutter/material.dart';
import 'package:play_to_app/src/views/text_style.dart';

class FootBallBottomNavBar extends StatelessWidget {
  const FootBallBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * 0.1,
      width: _size.width,
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: _size.width / 2.0,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14.0),
                bottomLeft: Radius.circular(14.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Total Harga',
                    style: textStyle().copyWith(color: Colors.white70)),
                Text('Rp 600.000', style: textStyle2()),
              ],
            ),
          ),
          const SizedBox(width: 12.0),
          Text('salanjutnya', style: textStyle2())
        ],
      ),
    );
  }
}
