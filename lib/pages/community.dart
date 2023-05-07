// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Icon(Icons.group, color: Color.fromARGB(255, 40, 136, 98), size: 80),
          Text(
            'Start Your Community',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.animation,
                size: 30,
                color: Colors.grey,
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Organize related groups',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Manage groups from on space',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.message,
                size: 30,
                color: Colors.grey,
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Keep chats focused',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Create groups for different topics',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.spatial_tracking,
                size: 30,
                color: Colors.grey,
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reach Everyone at once',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Send announcements to members',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 140,
          ),
          Column(
            children: [
              FittedBox(
                  child: Text(
                'Our Privacy Policy includes details about Communities',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              )),
              Text(
                'Learn More',
                style: TextStyle(color: Color.fromARGB(255, 40, 136, 98)),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              width: 400,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Get Started'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 40, 136, 98)),
              ))
        ]),
      ),
    );
  }
}
