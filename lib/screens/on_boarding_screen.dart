import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String routeName = "on_boarding_screen";

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }

    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(microseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF7B51D3),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Color(0xFF5B16D0),
        systemNavigationBarColor: Color(0xFF5B16D0),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        /* appBar: AppBar(
          backgroundColor: Color(0xFF3594DD),
          title: Text('test'),
        ), */
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.1,
                  0.4,
                  0.7,
                  0.9,
                ],
                colors: [
                  Color(0xFF3594DD),
                  Color(0xFF4563DB),
                  Color(0xFF5036D5),
                  Color(0xFF5B16D0),
                ]),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () => print('skip'),
                      child: Text('Skip'),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 548,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image(
                                  image:
                                      AssetImage('assets/images/image_1.png'),
                                  height: 300.0,
                                  width: 300.0,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Text(
                                'Connect People\naround the world',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consect adipiscing',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image(
                                  image:
                                      AssetImage('assets/images/image_2.png'),
                                  height: 300.0,
                                  width: 300.0,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Text(
                                'Get a new experience\nof imagination',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consect adipiscing',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image(
                                  image:
                                      AssetImage('assets/images/image_3.png'),
                                  height: 300.0,
                                  width: 300.0,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Text(
                                'Get a new experience\nof imagination',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consect adipiscing',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
