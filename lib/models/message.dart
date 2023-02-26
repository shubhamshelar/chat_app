import 'package:flutter/material.dart';

import '../constant.dart';

class Message {
  final String text, count, time;
  Color color;
  Message(
      {this.text = 'a',
      this.color = Colors.black,
      this.count = '0',
      this.time = '13:10'});
}

List<Message> messages = [
  Message(),
  Message(),
  Message(text: ' Typing...', color: primaryColor, count: '9+', time: '13:00'),
  Message(text: ' Hii!', count: '1 ', time: '13:10'),
  Message(text: ' Hii!', count: '', time: '13:10')
];
List<int> seq = [3, 4, 2];
