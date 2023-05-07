// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp/pages/calls.dart';
import 'package:whatsapp/pages/chats.dart';
import 'package:whatsapp/pages/community.dart';
import 'package:whatsapp/pages/status.dart';

class Slivers extends StatelessWidget {
  const Slivers({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 40, 136, 98),
              floating: true,
              pinned: true,
              toolbarHeight: 100,
              elevation: 0,
              snap: true,
              title: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('WhatsApp'),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 18, 10, 10),
                      child: Icon(Icons.camera_alt),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 18, 10, 10),
                      child: Icon(Icons.search),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 18, 10, 10),
                      child: Icon(Icons.more_vert),
                    )
                  ],
                ),
              ),
              bottom: TabBar(indicatorColor: Colors.white, tabs: [
                Tab(
                  icon: Icon(Icons.groups),
                ),
                Tab(
                  text: 'Chats',
                ),
                Tab(
                  text: 'Status',
                ),
                Tab(
                  text: 'Call',
                ),
              ]),
            ),
            SliverToBoxAdapter(
              child: TabBarView(children: [
                Community(),
                Chats(),
                Status(),
                Calls(),
              ]),
            ),
          ],
          
        ),
        
      ),
    );
  }
}
