import 'package:flutter/material.dart';
import '../widgets/chitchat_continue_button.dart';
import '../widgets/chitchat_sosmed.dart';

class ChitchatButtonLoginSosmed extends StatelessWidget {
  const ChitchatButtonLoginSosmed({
    Key? key,
    required this.isKeyboardShowing,
  }) : super(key: key);

  final bool isKeyboardShowing;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //background sesuaikan, jika keyboard terbuka maka pake primary color
      color: isKeyboardShowing ? Theme.of(context).primaryColor : Colors.white,
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewPadding.bottom,
      ),
      child: isKeyboardShowing
          ? ChitchatContinueButton()
          : Row(
              children: <Widget>[
                Expanded(
                  child: ChitchatSosmed(
                    title: "Facebook",
                    image: "assets/images/facebook.png",
                    backgroundColor: Colors.blue,
                  ),
                ),
                Expanded(
                  child: ChitchatSosmed(
                    title: "Google",
                    image: "assets/images/google.png",
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
    );
  }
}
