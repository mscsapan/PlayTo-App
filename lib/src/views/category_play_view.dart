import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_to_app/src/logic/controller_cubit.dart';

import '../data/data_list.dart';

class CategoryPlayView extends StatelessWidget {
  const CategoryPlayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ControllerCubit _controller =
        BlocProvider.of<ControllerCubit>(context);
    final _size = MediaQuery.of(context).size;
    return SizedBox(
      height: _size.height * 0.06,
      // color: Colors.red,
      child: BlocBuilder<ControllerCubit, int>(
        builder: (context, state) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            child: Row(
              children: List.generate(
                catTitle2.length,
                (index) {
                  bool position = _controller.catTitleIndex == index;
                  return Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: GestureDetector(
                      onTap: () {
                        _controller.catTitleState(index);
                        debugPrint(catTitle2[index]);
                      },
                      child: Container(
                        height: _size.height * 0.05,
                        width: _size.width / 2.6,
                        margin: const EdgeInsets.only(right: 0.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: position ? Colors.pink : Colors.transparent,
                          border: Border.all(
                              color:
                                  position ? Colors.transparent : Colors.grey),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(
                          catTitle2[index],
                          style: GoogleFonts.openSans(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: position ? Colors.white : Colors.black,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
