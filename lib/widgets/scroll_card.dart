import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:flutter/material.dart';

import '../constant.dart';
import '../models/user.dart';

class ScrollCard extends StatelessWidget {
  final int index;
  final User user;
  const ScrollCard({
    required this.index,
    required this.user,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: 90,
              height: 110,
              child: Image.asset(
                user.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              width: 60,
              height: 16,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    user.name,
                    style: TextStyle(fontSize: 10),
                  ),
                  user.verified
                      ? Icon(
                          Icons.verified_rounded,
                          color: secondaryColor,
                          size: 10,
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
        index == 0
            ? Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 10,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        EvaIcons.heart,
                        color: Colors.white,
                        size: 35,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '20',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ))
            : Container(),
      ],
    );
  }
}
