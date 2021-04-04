import 'package:flutter/material.dart';
import 'package:flutter_chitchat/screens/components/detail_page_screen.dart';

class DetailScreen extends StatelessWidget {
  static const String routeName = "detail_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DetailPageScreen(),
      ),
    );
  }
}
