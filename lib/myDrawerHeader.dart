// ignore_for_file: file_names
import 'package:flutter/material.dart';

Color lightOrange = const Color(0xffff9f1c); // Orange 1
Color darkOrange = const Color(0xFFff5417); // Orange 2
Color lightGreen = const Color(0xFF2de052); // Green 2
Color darkGreen = const Color(0xFF14a523); // Green 2
Color navyBlue = const Color(0xFF122663); // Navy 1

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightOrange,
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage('https://yt3.ggpht.com/remx0Q0jSEFrULJ2DawwAp-Y4e_jE43XXxOpzEWEvoIyo-tCzxnUP0ORozSpfwjMFZFBvBIg=s48-c-k-c0x00ffffff-no-rj'))
            ),
          ),
          const Text("data")
        ],
      ),
    );
  }
}