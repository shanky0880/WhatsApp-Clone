// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp/pages/calls.dart';
import 'package:whatsapp/pages/chats.dart';
import 'package:whatsapp/pages/community.dart';
import 'package:whatsapp/pages/status.dart';
import 'package:speed_dial_fab/speed_dial_fab.dart';

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Color.fromARGB(255, 40, 136, 98),
          title: Row(
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
          // centerTitle: true,
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
        body: TabBarView(children: [
          Community(),
          Chats(),
          Status(),
          Calls(),
        ]),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.message),
            backgroundColor: Color.fromARGB(255, 40, 136, 98),
          ),
        ),
        // floatingActionButton: Padding(
        //   padding: const EdgeInsets.only(bottom: 50),
        //   child: SpeedDialFabWidget(
        //     secondaryIconsList: [
        //       Icons.home,
        //       Icons.message,
        //       Icons.call,
        //     ],
        //     secondaryIconsText: [
        //       "copy",
        //       "paste",
        //       "cut",
        //     ],
        //     secondaryIconsOnPress: [
        //       () => {},
        //       () => {},
        //       () => {},
        //     ],
        //     // secondaryBackgroundColor: Colors.grey,
        //     secondaryForegroundColor: Color.fromARGB(255, 40, 136, 98),
        //     primaryBackgroundColor: Color.fromARGB(255, 40, 136, 98),
        //     primaryForegroundColor: Colors.grey,
        //     // ),
        //   ),
        // ),
      ),
    );
  }
}
