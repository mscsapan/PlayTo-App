import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_to_app/src/data/data_list.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * 0.2,
      width: _size.width,
      margin: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Wrap(
          spacing: 6.0,
          runSpacing: 4.0,
          children: List.generate(
            catTitle.length,
            (index) => SizedBox(
              height: _size.height * 0.1,
              width: _size.width / 2.2,
              child: GestureDetector(
                onTap: () => debugPrint(catTitle[index]),
                child: Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 35.0,
                          width: 35.0,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[300],
                          ),
                          child: FaIcon(
                            icons[index],
                            size: 20.0,
                            color: Colors.green.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          catTitle[index],
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
