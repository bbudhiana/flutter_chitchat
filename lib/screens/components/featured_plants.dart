import 'package:flutter/material.dart';
import 'package:flutter_chitchat/constants.dart';

class FaturedPlants extends StatelessWidget {
  const FaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FuaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FuaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
          FuaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FuaturePlantCard extends StatelessWidget {
  const FuaturePlantCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        //color: Colors.grey,
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        //child: Text('test dfsdfasd'),
      ),
    );
  }
}
