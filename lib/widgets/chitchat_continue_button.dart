import 'package:flutter/material.dart';
import '../screens/verification_screen.dart';
import '../constant.dart';

class ChitchatContinueButton extends StatelessWidget {
  const ChitchatContinueButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.of(context).pushNamed(VerificationScreen.routeName);
      },
      child: Center(
        child: Text(
          'Continue',
          style: kGrabWhiteRegularSmall,
        ),
      ),
    );
  }
}
