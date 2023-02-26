import 'package:flutter/material.dart';

import '../constant.dart';
import '../models/message.dart';
import '../models/user.dart';

class MessageCard extends StatelessWidget {
  final User user;
  final Message message;
  const MessageCard({Key? key, required this.user, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: Image.asset(
                      user.image,
                      fit: BoxFit.cover,
                    ).image,
                  ),
                ),
                //name colume
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name row
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '${user.name} ',
                          style: TextStyle(fontSize: 20),
                        ),
                        user.verified
                            ? Icon(
                                Icons.verified_rounded,
                                color: secondaryColor,
                                size: 20,
                              )
                            : Container(),
                      ],
                    ),
                    Text(
                      message.text,
                      style: TextStyle(color: message.color, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),

            //end column

            Column(
              children: [
                Text(message.time),
                Container(
                  decoration: BoxDecoration(
                    color: message.count != '' ? primaryColor : Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      message.count,
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                )
              ],
            )
          ]),
    );
  }
}
