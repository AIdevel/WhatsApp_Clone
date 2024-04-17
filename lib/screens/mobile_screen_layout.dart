import 'package:flutter/material.dart';
import 'package:what_app/colors.dart';
import 'package:what_app/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            title: Text(
              'Whatsapp',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: false,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              ),
            ],
            bottom: TabBar(
                indicatorColor: tabColor,
                unselectedLabelColor: Colors.grey,
                labelColor: tabColor,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                indicatorWeight: 4,
                tabs: [
                  Tab(
                    text: 'CHATS',
                  ),
                  Tab(
                    text: 'STATUS',
                  ),
                  Tab(
                    text: 'CALLS',
                  ),
                ]),
          ),
          body: ContactList(),
          floatingActionButton: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80.0),
            ),
            onPressed: () {},
            backgroundColor: tabColor,
            child: Icon(
              Icons.comment,
              color: Colors.white,
            ),
          ),
        ));
  }
}
