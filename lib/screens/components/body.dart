import 'package:flutter/material.dart';
import 'package:flutter_chitchat/constants.dart';
import 'package:flutter_chitchat/screens/components/featured_plants.dart';
import 'package:flutter_chitchat/screens/components/recomend_plants.dart';
import 'package:flutter_chitchat/screens/components/title_with_more_btn.dart';

import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: () {},
          ),
          RecomendPlants(),
          TitleWithMoreBtn(
            title: "Feature Plants",
            press: () {},
          ),
          FaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
