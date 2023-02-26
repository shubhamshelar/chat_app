import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), //color of shadow
              spreadRadius: 2, //spread radius
              blurRadius: 3, // blur radius
              offset: Offset(0, 1), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
          ]),
      child: TextField(
        //cursorColor: Colors.grey,
        decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(EvaIcons.search, color: Colors.grey),
            hintText: " Search",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20.0)),
        onChanged: (newValue) {},
      ),
    );
  }
}
