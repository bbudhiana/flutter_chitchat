import 'package:flutter/material.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/logo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'This is title',
            style: TextStyle(
              fontSize: 22,
              color: Colors.redAccent,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Description this is a description that must be explain everything you need to know.Description this is a description that must be explain everything you need to know. ',
            textAlign: TextAlign.center,
            softWrap: true,
          ),
          Text(
            'Description this is a description that must be explain everything you need to know.Description this is a description that must be explain everything you need to know. ',
            textAlign: TextAlign.center,
            softWrap: true,
          ),
          Text(
            'Description this is a description that must be explain everything you need to know.Description this is a description that must be explain everything you need to know. ',
            textAlign: TextAlign.center,
            softWrap: true,
          ),
          Text(
            'Description this is a description that must be explain everything you need to know.Description this is a description that must be explain everything you need to know. ',
            textAlign: TextAlign.center,
            softWrap: true,
          ),
          Text(
            'Description this is a description that must be explain everything you need to know.Description this is a description that must be explain everything you need to know. ',
            textAlign: TextAlign.center,
            softWrap: true,
          ),
          Text(
            'Description this is a description that must be explain everything you need to know.Description this is a description that must be explain everything you need to know. ',
            textAlign: TextAlign.center,
            softWrap: true,
          ),
          Text(
            'Description this is a description that must be explain everything you need to know.Description this is a description that must be explain everything you need to know. ',
            textAlign: TextAlign.center,
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
