import 'package:flutter/material.dart';
import 'package:flutter_chitchat/constants.dart';
import 'package:flutter_chitchat/screens/components/icon_cart.dart';
import 'package:flutter_chitchat/screens/components/image_and_icons.dart';
import 'package:flutter_chitchat/screens/components/title_and_price.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: "Haifa",
            country: "Indonesia",
            price: 10,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Buy Now"),
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Text('Description'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          )
        ],
      ),
    );
  }
}
