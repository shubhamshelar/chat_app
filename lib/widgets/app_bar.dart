import 'package:flutter/material.dart';

import '../constant.dart';

class MyAppBar extends StatelessWidget {
  final String image;

  const MyAppBar({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15, right: 20),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(image),
          ),
        ),
        Text(
          'Find Flames',
          style: TextStyle(
              color: primaryColor, fontWeight: FontWeight.w400, fontSize: 20),
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(
            'assets/preference.png',
            scale: 2.5,
          ),
        ),
      ],
    );
  }
}
