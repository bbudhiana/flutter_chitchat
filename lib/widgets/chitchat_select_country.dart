import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class ChitChatSelectCountry extends StatelessWidget {
  const ChitChatSelectCountry({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[100],
      ),
      // margin: EdgeInsets.all(10),
      child: CountryCodePicker(
        // onChanged: print,
        initialSelection: 'ID',

        showCountryOnly: false,
        alignLeft: false,
      ),
    );
  }
}
