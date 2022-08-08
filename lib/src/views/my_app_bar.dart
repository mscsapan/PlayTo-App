import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

PreferredSizeWidget myAppBar() {
  return AppBar(
    title: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          barsIcon(),
          const FaIcon(
            FontAwesomeIcons.bell,
            color: Colors.black54,
          )
        ],
      ),
    ),
  );
}

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
