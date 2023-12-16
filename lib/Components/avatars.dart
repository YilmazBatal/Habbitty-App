// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:habbitty/Components/boxshadow.dart';
import 'package:habbitty/main.dart';

// ignore: must_be_immutable
class Avatars extends StatelessWidget {
  final int ID;
  final String avatarPath;
  final String avatarName;
  bool isOwned;

  Avatars({
    super.key,
    required this.ID,
    required this.avatarPath,
    required this.avatarName,
    required this.isOwned,
  });

  @override
  Widget build(BuildContext context) {
    if (isOwned) {
      ownedColor = lightGreen;
    } else if (!isOwned) {
      ownedColor = navyBlue;
    }

    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [MyBoxShadow(navyBlue)]),
          child: Image(
            width: 100,
            height: 100,
            image: AssetImage(avatarPath),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          avatarName,
          style: TextStyle(fontSize: 25, color: ownedColor),
        ),
      ],
    );
  }
}
