// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

BoxShadow MyBoxShadow(Color shadowColor) {
  return BoxShadow(
    color: shadowColor.withOpacity(0.5),
    spreadRadius: 3,
    blurRadius: 5,
  );
}

