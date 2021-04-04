import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chitchat/pages/page_dua.dart';
import 'package:flutter_chitchat/pages/page_satu.dart';

final List<Widget> pageSliders = [
  PageSatu(),
  PageDua(),
];

class PageSliderScreen extends StatefulWidget {
  static const String routeName = "page_slider_screen";

  @override
  _PageSliderScreenState createState() => _PageSliderScreenState();
}

class _PageSliderScreenState extends State<PageSliderScreen> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* extendBodyBehindAppBar: true,
      appBar: AppBar(
        //title: Text('Carousel with indicator demo'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ), */
      body: Container(
        height: MediaQuery.of(context).size.height,
        //color: Colors.grey[300],
        child: Column(
          children: [
            Expanded(
              child: Container(
                //color: Colors.grey[400],
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 80,
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  child: CarouselSlider(
                    items: pageSliders,
                    options: CarouselOptions(
                        height: MediaQuery.of(context).size.height,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        //aspectRatio: 1.0,
                        //enlargeCenterPage: true,
                        //pageViewKey: PageStorageKey<String>('carousel_slider'),
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: pageSliders.map((item) {
                int index = pageSliders.indexOf(item);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Register'),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                primary: Colors.blue,
                onPrimary: Colors.yellow,
                shadowColor: Colors.green,
                minimumSize: Size(200, 40),
                alignment: Alignment.center,
                animationDuration: Duration(seconds: 1),
                elevation: 5,
                side: BorderSide(color: Colors.red.shade900, width: 2),
                padding: EdgeInsets.all(20),
                //kepadatan sisi dengan dalamnya : standart->comfortable->compact
                visualDensity: VisualDensity.comfortable,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Have an account?'),
                TextButton(onPressed: () {}, child: Text('Login')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
