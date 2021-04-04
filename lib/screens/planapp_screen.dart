import 'package:flutter/material.dart';
import 'package:flutter_chitchat/constants.dart';
import 'package:flutter_chitchat/screens/components/my_bottom_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/body.dart';

class PlanappScreen extends StatelessWidget {
  static const String routeName = "planapp_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(child: Body()),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      title: Text('Plan App'),
    );
  }
}
