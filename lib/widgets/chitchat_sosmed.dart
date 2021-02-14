import 'package:flutter/material.dart';

class ChitchatSosmed extends StatelessWidget {
  final String title;
  final String image;
  final TextStyle? textStyle;
  final Color backgroundColor;
  final Color? imageColor;

  const ChitchatSosmed({
    Key? key,
    required this.title,
    required this.image,
    this.textStyle,
    required this.backgroundColor,
    this.imageColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
                // blurRadius: 10,
                offset: Offset.fromDirection(1)),
          ]),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image(
              //color: Colors.white,
              width: 30,
              image: AssetImage(image),
            ),
          ),
          Spacer(),
          Text(
            title,
            style: textStyle,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
