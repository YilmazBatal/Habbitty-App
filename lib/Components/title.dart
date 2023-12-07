// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Padding MyTitle(String myTitle, Color myColor) {
  return Padding(
    padding: const EdgeInsets.only(top: 15, left: 30, right: 30),
    child: Text(
      myTitle,
      style: TextStyle(
        fontSize: 28,
        color: myColor,
      ),
    ),
  );
}
