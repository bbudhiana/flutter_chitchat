import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NoCenterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(title: Text('Basic demo')),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(
          disableCenter: true,
        ),
        items: list
            .map((item) => Container(
                  child: Text(item.toString()),
                  color: Colors.green,
                ))
            .toList(),
      )),
    );
  }
}
