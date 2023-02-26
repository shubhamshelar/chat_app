import 'package:flutter/material.dart';

class IconsBar extends StatelessWidget {
  List<Widget> icons = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 4; i++) {
      icons.add(Image.asset('assets/logo$i.png'));
      if (i == 0) {
        icons.add(const SizedBox(
          width: 10,
        ));
      }
      if (i == 1) {
        icons.add(const SizedBox(
          width: 15,
        ));
      }
      if (i == 2) {
        icons.add(const SizedBox(
          width: 0,
        ));
      }
    }
    return Card(
      shadowColor: Colors.grey,
      elevation: 10,
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: icons),
      ),
    );
  }
}
