import 'package:flutter/material.dart';
import 'package:what_app/info_list.dart';
import 'package:what_app/widgets/my_message_card.dart';
import 'package:what_app/widgets/sender_message_card.dart';

class WebChatList extends StatelessWidget {
  const WebChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        }
        return SenderMessageCard(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        );
      },
    );
  }
}
