import 'package:chat_app/constant.dart';
import 'package:chat_app/widgets/app_bar.dart';
import 'package:chat_app/widgets/scroll_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

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
                image: 'assets/Ellipse 2.jpg',
              ),
              SizedBox(
                height: 10,
              ),
              Container(
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
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        leading: Padding(
                          padding: EdgeInsets.only(left: 15, right: 20),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(users[index + 1].image),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Positioned(
            left: -5,
            right: -5,
            bottom: -6,
            child: Icons(),
          )
        ],
      ),
    );
  }
}

class Icons extends StatelessWidget {
  List<Widget> icons = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 4; i++) {
      icons.add(Image.asset('assets/logo$i.png'));
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
