import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_chitchat/pages/basic_demo.dart';
import 'package:flutter_chitchat/pages/carousel_change_reason_demo.dart';
import 'package:flutter_chitchat/pages/carousel_demo_home.dart';
import 'package:flutter_chitchat/pages/carousel_with_indicator_demo.dart';
import 'package:flutter_chitchat/pages/complicated_image_demo.dart';
import 'package:flutter_chitchat/pages/enlarge_strategy_demo.dart';
import 'package:flutter_chitchat/pages/fullscreen_slider_demo.dart';
import 'package:flutter_chitchat/pages/image_slider_demo.dart';
import 'package:flutter_chitchat/pages/keep_pageview_position_demo.dart';
import 'package:flutter_chitchat/pages/manually_controlled_slider.dart';
import 'package:flutter_chitchat/pages/multiple_item_demo.dart';
import 'package:flutter_chitchat/pages/no_center_demo.dart';
import 'package:flutter_chitchat/pages/non_looping_demo.dart';
import 'package:flutter_chitchat/pages/on_demand_carousel_demo.dart';
import 'package:flutter_chitchat/pages/prefetch_image_demo.dart';
import 'package:flutter_chitchat/pages/vertical_slider_demo.dart';

class SliderScreen extends StatelessWidget {
  static const String routeName = "slider_screen";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (ctx) => CarouselDemoHome(),
      '/basic': (ctx) => BasicDemo(),
      '/nocenter': (ctx) => NoCenterDemo(),
      '/image': (ctx) => ImageSliderDemo(),
      '/complicated': (ctx) => ComplicatedImageDemo(),
      '/enlarge': (ctx) => EnlargeStrategyDemo(),
      '/manual': (ctx) => ManuallyControlledSlider(),
      '/noloop': (ctx) => NoonLoopingDemo(),
      '/vertical': (ctx) => VerticalSliderDemo(),
      '/fullscreen': (ctx) => FullscreenSliderDemo(),
      '/ondemand': (ctx) => OnDemandCarouselDemo(),
      '/indicator': (ctx) => CarouselWithIndicatorDemo(),
      '/prefetch': (ctx) => PrefetchImageDemo(),
      '/reason': (ctx) => CarouselChangeReasonDemo(),
      '/position': (ctx) => KeepPageviewPositionDemo(),
      '/multiple': (ctx) => MultipleItemDemo(),
    });
  }
}
