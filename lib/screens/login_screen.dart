import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import 'verification_screen.dart';
import '../widgets/chitchat_logo.dart';
import '../widgets/chitchat_select_country.dart';
import '../widgets/chitchat_sosmed.dart';
import '../widgets/chitchat_continue_button.dart';
import '../widgets/chitchat_button_login_sosmed.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "login_screen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    //deteksi apakah keyboard view terbuka, artinya layar di titik 0 (bawah) atau lebih (saat keyboard terbuka)
    bool isKeyboardShowing = MediaQuery.of(context).viewInsets.bottom > 0;

    //tambah GestureDetector agar bisa tutup keyboard di sembarang screen
    return GestureDetector(
      //jika ada tap maka fokus pada titik yg di 'tap'
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          //agar rata kiri
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).viewPadding.top,
                left: fivePercentWidth(context),
                //bottom: 50,
              ),
              child: Opacity(
                //opacity untuk hide and show tombol back
                opacity: isKeyboardShowing ? 1.0 : 0.0,
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: isKeyboardShowing
                      ? () {
                          FocusScope.of(context).requestFocus(FocusNode());
                        }
                      : null,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: fivePercentWidth(context),
              ),
              child: Opacity(
                opacity: isKeyboardShowing ? 0.0 : 1.0,
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.contain,
                  child: ChitchatLogo(),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                left: fivePercentWidth(context),
              ),
              child: Text(
                "Welcome!",
                style: kGrabWhiteBoldMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: fivePercentWidth(context),
              ),
              child: Text(
                "Enter your mobile number to continue",
                style: kGrabWhiteRegularSmall,
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(
                left: fivePercentWidth(context),
              ),
              child: Row(
                children: <Widget>[
                  ChitChatSelectCountry(),
                  SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: TextField(
                      cursorColor: Theme.of(context).primaryColor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone Number",
                        hintStyle: kGrabWhiteRegularSmall.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      style: kGrabBlackBoldMedium,
                      keyboardType: TextInputType.number,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            //kasih spasi dengan flex=2 agar tidak ke bawah
            Spacer(flex: 2),
            Center(
              child: Opacity(
                opacity: isKeyboardShowing ? 0.0 : 1.0,
                child: Text(
                  "or continue with social account",
                  style: kGrabWhiteRegularSmall,
                ),
              ),
            ),
            SizedBox(height: 10),
            ChitchatButtonLoginSosmed(isKeyboardShowing: isKeyboardShowing),
          ],
        ),
      ),
    );
  }
}
