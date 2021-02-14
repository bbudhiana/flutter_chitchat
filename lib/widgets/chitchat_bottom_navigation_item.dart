import 'package:flutter/material.dart';
import '../constant.dart';

class ChitchatBottomNavigationItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function() onTap;
  final bool isActive;
  final IconData? iconActive;

  //constructor
  const ChitchatBottomNavigationItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.isActive = false,
    this.iconActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        child: Container(
          margin: EdgeInsets.all(7),
          child: Column(
            children: <Widget>[
              Icon(
                iconActive == null
                    ? icon
                    : isActive
                        ? iconActive
                        : icon,
                color: isActive ? Theme.of(context).primaryColor : Colors.grey,
              ),
              Spacer(),
              Text(title,
                  style: kGrabBlackBoldSmall.copyWith(
                    color: Colors.black,
                  )),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
