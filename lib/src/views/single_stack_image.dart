import 'package:flutter/material.dart';

class SingleImage extends StatelessWidget {
  const SingleImage(
      {Key? key, required this.leftPosition, required this.imageNo})
      : super(key: key);
  final double? leftPosition;
  final int imageNo;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -10.0,
      left: leftPosition,
      bottom: 0.0,
      child: Container(
        height: 46.0,
        width: 46.0,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/$imageNo.jpg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
