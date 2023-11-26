import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';

Color lightOrange = const Color(0xffff8c2e); // Orange 1
Color darkOrange = const Color(0xFFff5417); // Orange 2
Color lightGreen = const Color(0xFF2de052); // Green 2
Color darkGreen = const Color(0xFF14a523); // Green 2
Color navyBlue = const Color(0xFF122663); // Navy 1

int credits = 100;
int completed = 2;
int toBeCompleted = 10;
String welcomeMessage = "Good Morning!";

final List<String> myActivityNames = [
  "10 Push Up",
  "Study Math",
  "Practice Programming",
];

final List<String> myActivityTimes = [
  "10:00 - 10:15",
  "13:00 - 14:30",
  "16:00 - 19:00",
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(Brightness.light),
      home: const HomePage(),
    );
  }
}


BoxShadow MyBoxShadow() {
  return BoxShadow(
    color: navyBlue.withOpacity(0.5),
    spreadRadius: 3,
    blurRadius: 5,
  );
}

// Google Font Library
ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.snigletTextTheme(baseTheme.textTheme),
  );
}