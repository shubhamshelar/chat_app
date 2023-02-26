import 'package:chat_app/constant.dart';
import 'package:chat_app/widgets/app_bar.dart';
import 'package:chat_app/widgets/message_card.dart';
import 'package:chat_app/widgets/scroll_card.dart';
import 'package:chat_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:chat_app/widgets/bottombar.dart';

import 'models/message.dart';
import 'models/user.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryFaint,
      body: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          // Container(
          //   color: Colors.black,
          //   width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height,
          // ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.06,
            left: MediaQuery.of(context).size.width * 0.02,
            right: MediaQuery.of(context).size.width * 0.02,
            child: Column(children: <Widget>[
              const MyAppBar(
                image: 'assets/user.avif',
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      return ScrollCard(
                        index: index,
                        user: users[index],
                      );
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              )
            ]),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 310,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return MessageCard(
                      user: users[seq[index]],
                      message: messages[seq[index]],
                    );
                  }),
            ),
          ),
          Positioned(left: 35, right: 35, top: 280, child: SearchBar()),
          Positioned(
            left: -5,
            right: -5,
            bottom: -6,
            child: IconsBar(),
          )
        ],
      ),
    );
  }
}
