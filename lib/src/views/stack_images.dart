import 'package:flutter/material.dart';
import 'package:play_to_app/src/views/single_stack_image.dart';

class StackImages extends StatelessWidget {
  const StackImages({Key? key}) : super(key: key);
  final String image = 'assets/images/female-running-stairs.jpg';

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width / 3.2,
      height: _size.height * 0.06,
      color: Colors.white,
      child: Stack(
        clipBehavior: Clip.none,
        // fit: StackFit.expand,
        children: [
          Container(
            height: 44.0,
            width: 44.0,
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
            leftPosition: 14,
            imageNo: 1,
          ),
          const SingleImage(
            leftPosition: 25,
            imageNo: 2,
          ),
          const SingleImage(
            leftPosition: 36,
            imageNo: 3,
          ),
          const SingleImage(
            leftPosition: 46,
            imageNo: 4,
          ),
        ],
      ),
    );
  }
}
