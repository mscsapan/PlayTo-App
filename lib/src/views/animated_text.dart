import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedScreenText extends StatelessWidget {
  const AnimatedScreenText({Key? key, this.text = 'Profile Screen'})
      : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            ScaleAnimatedText(
              text,
              textStyle: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(fontSize: 30.0),
            ),
          ],
        ),
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TypewriterAnimatedText(
              'Working on It 😊',
              textStyle: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(fontSize: 34.0),
            ),
          ],
        ),
      ],
    );
  }
}
