import 'package:flutter/material.dart';
import 'package:flutter_chitchat/bottom_navigation/main_screen.dart';
import 'package:flutter_chitchat/screens/login_screen.dart';
import 'package:flutter_chitchat/screens/verification_screen.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ChitChat',
      theme: ThemeData(
        //brightness: Brightness.dark,
        primaryColor: Color(0xFF02B462),
        accentColor: Colors.yellow,
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Lato',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        ),
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (ctx) => SplashScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        VerificationScreen.routeName: (ctx) => VerificationScreen(),
        MainScreen.routeName: (ctx) => MainScreen(),
      },
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
