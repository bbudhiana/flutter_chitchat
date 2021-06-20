import 'dart:async';

import 'package:flutter/material.dart';
import '../widgets/chitchat_logo.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splash_screen";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  removeScreen() {
    return _timer = Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('login_screen');
      //Navigator.of(context).pushReplacementNamed('slider_screen');
      //Navigator.of(context).pushReplacementNamed('page_slider_screen');
      //Navigator.of(context).pushReplacementNamed('planapp_screen');
      //Navigator.of(context).pushReplacementNamed('detail_screen');
      //Navigator.of(context).pushReplacementNamed('on_boarding_screen');
      //Navigator.of(context).pushReplacementNamed('getsample_screen');
    });
  }

  @override
  void initState() {
    removeScreen();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: ChitchatLogo(),
      ),
    );
  }
}
