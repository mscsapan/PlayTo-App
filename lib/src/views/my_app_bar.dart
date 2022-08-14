import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color iconColor = Colors.black;

PreferredSizeWidget myAppBar({bool isVisible = false}) {
  return AppBar(
    title: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          barsIcon(),
          isVisible
              ? const FaIcon(
                  FontAwesomeIcons.bell,
                  color: Colors.black54,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FaIcon(
                      FontAwesomeIcons.glassMartiniAlt,
                      size: 20.0,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 16.0),
                    FaIcon(
                      FontAwesomeIcons.bell,
                      color: Colors.black54,
                    )
                  ],
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
          height: 14,
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

PreferredSizeWidget footBallAppBar() => AppBar(
      leading: const Icon(Icons.arrow_back, color: iconColor),
      actions: [
        IconButton(
          onPressed: () {},
          splashRadius: 24.0,
          icon: const Icon(
            Icons.share,
            color: iconColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          splashRadius: 24.0,
          icon: const Icon(
            FontAwesomeIcons.ellipsisV,
            color: iconColor,
          ),
        ),
      ],
    );
