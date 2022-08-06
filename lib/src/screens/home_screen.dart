import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  barsIcon() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(
          width: 35.0,
          child: Divider(
            color: Colors.black,
            thickness: 2.0,
            height: 0,
          ),
        ),
        SizedBox(
          width: 26.0,
          child: Divider(
            color: Colors.black,
            thickness: 2.0,
            height: 16,
          ),
        ),
        SizedBox(
          width: 18.0,
          child: Divider(
            color: Colors.black,
            thickness: 2.0,
            height: 3,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [barsIcon()],
          ),
        ),
      ),
      body: Center(
        child: barsIcon(),
      ),
    );
  }
}
