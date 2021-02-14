import 'package:flutter/material.dart';
import '../constant.dart';
import '../widgets/chitchat_icon_menu.dart';
import '../widgets/chitchat_more_icon_menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            //Stack 1. Column (Hijau dan putih)
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 180 + MediaQuery.of(context).viewPadding.top,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF138880),
                        Color(0xFF1C9E82),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                ),
              ],
            ),
            //Stack 2. Padding Column (Ucapan, Card)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(
                        40.0 + MediaQuery.of(context).viewPadding.top),
                    child: Center(
                      child: Text(
                        "Good Afternoon",
                        style: kGrabWhiteRegularSmall,
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "OVO Balance",
                                style:
                                    kGrabBlackBoldMedium.copyWith(fontSize: 20),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text("RP",
                                    style: kGrabBlackRegularSmall.copyWith(
                                        color: Colors.grey)),
                              ),
                              Text(
                                "100.000",
                                style: kGrabBlackBoldMedium.copyWith(
                                    color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(width: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  color: Colors.grey[300],
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              ChitchatIconMenu(
                                icon: Icon(Icons.payment),
                                title: "Pay",
                              ),
                              ChitchatIconMenu(
                                icon: Icon(Icons.wallet_membership),
                                title: "Top Up",
                              ),
                              ChitchatIconMenu(
                                icon: Icon(Icons.attach_money),
                                title: "Reward",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ChitchatIconMenu(
                    icon: Icon(Icons.car_rental),
                    title: "Car",
                  ),
                  ChitchatIconMenu(
                    icon: Icon(Icons.motorcycle),
                    title: "Bike",
                  ),
                  ChitchatIconMenu(
                    icon: Icon(Icons.food_bank),
                    title: "Food",
                  ),
                  ChitchatIconMenu(
                    icon: Icon(Icons.delivery_dining),
                    title: "Delivery",
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ChitchatIconMenu(
                    icon: Icon(Icons.restaurant),
                    title: "Rent",
                  ),
                  ChitchatIconMenu(
                    icon: Icon(Icons.card_giftcard),
                    title: "Gift Cards",
                  ),
                  ChitchatIconMenu(
                    icon: Icon(Icons.subscriptions),
                    title: "Subscription",
                  ),
                  ChitchatIconMenu(
                    icon: Icon(Icons.more_horiz),
                    title: "More",
                  ),
                  //ChitchatMoreIconMenu(),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 8,
                color: Colors.grey[300],
              ),
              GridView.count(
                padding: EdgeInsets.all(5),
                childAspectRatio: .75,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                children: List.generate(
                  10,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Material(
                        borderRadius: BorderRadiusDirectional.circular(15),
                        elevation: 5,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.network(
                                  "https://image.freepik.com/free-vector/square-food-banner-with-photo_23-2148118766.jpg",
                                  fit: BoxFit.cover,
                                  // height: 150,
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Text("Article Title Here",
                                      style: kGrabBlackRegularSmall.copyWith(
                                          fontSize: 15)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.calendar_today,
                                      size: 15,
                                    ),
                                    SizedBox(width: 5),
                                    Text("1 min read",
                                        style: kGrabBlackRegularSmall.copyWith(
                                            fontSize: 15)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
