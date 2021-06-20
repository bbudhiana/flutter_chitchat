import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/rendering.dart';
import '../widgets/chitchat_bottom_navigation_item.dart';
import '../constant.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = "main_screen";
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text("Activity"),
    Text("Payment"),
    Text("Inbox"),
    Text("Account"),
  ];

  ScrollController _hideButtonController = new ScrollController();
  bool _isVisible = true;

  @override
  void dispose() {
    _hideButtonController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    //Untuk hide/show kan menu seperti di grab :
    //- kebawah hide menu
    //- keatas show menu
    _isVisible = true;
    //_hideButtonController = new ScrollController();
    _hideButtonController.addListener(() {
      //scroll ke bawah
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
          print("**** $_isVisible up");
        });
      }
      //scroll ke atas
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
          print("**** $_isVisible down");
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text('test for CustomScrollView'),
      ), */
      body: SafeArea(
        //info CustomScrollView : https://flutter.dev/docs/cookbook/lists/floating-app-bar
        // [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
        // turn can be placed in a [Scaffold.body].
        child: CustomScrollView(
          //untuk menggantikan appBar Default, gunakan SliverAppBar yg akan ikut scroll jika widget di scroll
          controller: _hideButtonController,
          slivers: <Widget>[
            /* SliverAppBar(
              title: Text('this is test for AppBar in Sliver'),
              //jika scroll balik maka langsung di tampilkan lagi appBar nya (floating=true)
              floating: true,
              // Display a placeholder widget to visualize the shrinking size.
              flexibleSpace: Placeholder(),
              // Make the initial height of the SliverAppBar larger than normal.
              expandedHeight: 100,
            ), */
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                //buat widges list menurut jumlah childCount
                return _widgetOptions.elementAt(_selectedIndex);
              }, childCount: 1),
            ),
          ],
        ),
      ),
      //untuk navigasi di bawah
      //dibungkus Animasi Container agar punya efek turun naik pelan
      bottomNavigationBar: AnimatedContainer(
        //bottomNavigationBar: AnimatedOpacity(
        duration: Duration(milliseconds: 300),
        //opacity: _isVisible ? 1.0 : 0.0,
        height:
            _isVisible ? MediaQuery.of(context).viewPadding.bottom + 70 : 0.0,
        child: BottomAppBar(
          elevation: 8,
          // shape: CircularNotchedRectangle(),
          color: Colors.white,
          //untuk hilangkan error : RenderFlex overflowed pixels, gunakan SingleChildScrollView
          child: SingleChildScrollView(
            child: Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ChitchatBottomNavigationItem(
                    icon: FontAwesomeIcons.compass,
                    iconActive: FontAwesomeIcons.solidCompass,
                    title: "Home",
                    onTap: () {
                      _selectedIndex = 0;
                      setState(() {});
                    },
                    isActive: _selectedIndex == 0,
                  ),
                  ChitchatBottomNavigationItem(
                    icon: FontAwesomeIcons.receipt,
                    title: "Acivity",
                    onTap: () {
                      _selectedIndex = 1;
                      setState(() {});
                    },
                    isActive: _selectedIndex == 1,
                  ),
                  ChitchatBottomNavigationItem(
                    icon: FontAwesomeIcons.wallet,
                    title: "Payment",
                    onTap: () {
                      _selectedIndex = 2;
                      setState(() {});
                    },
                    isActive: _selectedIndex == 2,
                  ),
                  ChitchatBottomNavigationItem(
                    icon: FontAwesomeIcons.inbox,
                    title: "Inbox",
                    onTap: () {
                      _selectedIndex = 3;
                      setState(() {});
                    },
                    isActive: _selectedIndex == 3,
                  ),
                  ChitchatBottomNavigationItem(
                    icon: FontAwesomeIcons.userCircle,
                    iconActive: FontAwesomeIcons.solidUserCircle,
                    title: "Account",
                    onTap: () {
                      _selectedIndex = 4;
                      setState(() {});
                    },
                    isActive: _selectedIndex == 4,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
