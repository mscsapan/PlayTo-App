import 'package:flutter/material.dart';
import 'package:play_to_app/src/views/single_stack_image.dart';

class StackImages extends StatelessWidget {
  const StackImages({Key? key}) : super(key: key);
  final String image = 'assets/images/female-running-stairs.jpg';

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return SizedBox(
      width: _size.width / 4.5,
      height: _size.height * 0.06,
      // color: Colors.red,
      child: Stack(
        clipBehavior: Clip.none,
        // fit: StackFit.expand,
        children: [
          Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
            // child: Image.asset(image, fit: BoxFit.cover),
          ),
          const SingleImage(
            leftPosition: 16,
            imageNo: 1,
          ),
          const SingleImage(
            leftPosition: 26,
            imageNo: 2,
          ),
          const SingleImage(
            leftPosition: 36,
            imageNo: 3,
          ),
        ],
      ),
    );
  }
}
