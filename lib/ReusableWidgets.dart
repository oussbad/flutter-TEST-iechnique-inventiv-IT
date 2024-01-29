import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  final String image;
  final String text;

  const ReusableWidget({
    required this.image,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: <Widget>[
        Image.asset(
          image,
          width: 80,
          height: 75,
        ),

        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),

      ],
    );
  }
}
