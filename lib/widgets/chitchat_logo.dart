import 'package:flutter/material.dart';

class ChitchatLogo extends StatelessWidget {
  const ChitchatLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      width: 150,
      //color: Colors.white,
      image: AssetImage(
        "assets/images/logo.jpg",
      ),
    );
  }
}
