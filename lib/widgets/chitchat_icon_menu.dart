import 'package:flutter/material.dart';
import '../constant.dart';

class ChitchatIconMenu extends StatelessWidget {
  const ChitchatIconMenu({
    Key? key,
    required this.title,
    required this.icon,
    this.size = 60,
  }) : super(key: key);

  final String title;
  final Icon icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        /* Image(
          height: size,
          image: AssetImage(image),
        ), */
        icon,
        SizedBox(height: 5),
        Text(title, style: kGrabBlackRegularSmall.copyWith(fontSize: 15)),
      ],
    );
  }
}
