import 'package:flutter/material.dart';
import 'package:what_app/colors.dart';
import 'package:what_app/widgets/web_chat_list.dart';

import '../info_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        centerTitle: false,
        // actions used as tailoring mean add the Icon at suffix
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: WebChatList()),
          TextField(
            decoration: InputDecoration(
              filled: true,
              hintText: 'Message',
              hintStyle: TextStyle(color: Colors.grey),
              fillColor: mobileChatBoxColor,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: IconButton(
                  icon: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.currency_rupee,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.photo_camera_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: EdgeInsets.all(15.0),
            ),
          ),

          //Text Input for Message
        ],
      ),
    );
  }
}
