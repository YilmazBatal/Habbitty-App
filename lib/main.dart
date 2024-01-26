import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habbitty/Pages/signin.dart';
// import 'package:habbitty/Models/activitydatabase.dart';
// ignore: unused_import
import 'package:habbitty/Pages/welcomePage.dart';
import 'package:habbitty/homepage.dart';
// import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Color lightOrange = const Color(0xffff8c2e); // Orange 1
Color darkOrange = const Color(0xFFff5417); // Orange 2
Color lightGreen = const Color.fromARGB(255, 29, 192, 62); // Green 1
Color darkGreen = const Color.fromARGB(255, 12, 126, 23); // Green 2
Color navyBlue = const Color(0xFF122663); // Navy 1
Color ownedColor = navyBlue;

List todaysHabitList = [
  // ["id",name,time,icon,isDone]
  [0, "10x Pushup", "10:00 AM - 10:15 AM", Icons.fitness_center_rounded, true],
  [1, "Study Math", "12:00 PM - 2:15 PM", Icons.school_rounded, true],
  [2, "Practice Prog.", "3:00 PM - 6:00 PM", Icons.code_rounded, false],
  [3, "Night Routine", "8:00 PM - 8:15 PM", Icons.bed_rounded, false],
  [4, "Bike Tour", "8:00 PM - 8:15 PM", Icons.pedal_bike_rounded, false],
  [5, "Brushing Teeths", "8:00 PM - 8:15 PM", Icons.bed_rounded, false],
];

List todaysTaskList = [
  // ["id",name,time,icon,isDone]
  [
    0,
    "Pay the Bills",
    "10:00 AM - 10:15 AM",
    Icons.calendar_today_outlined,
    true
  ],
  [
    1,
    "Contact the Bank",
    "12:00 PM - 2:15 PM",
    Icons.calendar_today_outlined,
    false
  ],
  [2, "Groceries", "3:00 PM - 6:00 PM", Icons.shopping_bag_outlined, false],
];

List avatarList = [
  // [assetImage,avatarName,isOwned]
  [0, "assets/avatars/1.png", "Jenny", true],
  [1, "assets/avatars/2.png", "Jenny", true],
  [2, "assets/avatars/3.png", "Jenny", false],
  [3, "assets/avatars/4.png", "Jenny", false],
  [4, "assets/avatars/5.png", "Jenny", true],
  [5, "assets/avatars/6.png", "Jenny", false],
  [6, "assets/avatars/7.png", "Jenny", false],
  [7, "assets/avatars/8.png", "Jenny", false],
  [8, "assets/avatars/9.png", "Jenny", false],
  [9, "assets/avatars/10.png", "Jenny", false],
  [10, "assets/avatars/11.png", "Jenny", false],
  [11, "assets/avatars/12.png", "Jenny", false],
];

int credits = 24;
int streak = 4;
int completed = 2;
int toBeCompleted = todaysHabitList.length;
String welcomeMessage = "Good Morning!";

void sp() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setInt('progressData', completed);
}

void main() async {
  // WidgetsFlutterBinding.ensureInitialized;
  // await ActivityDatabase.initalize();

  // runApp(
  //   ChangeNotifierProvider(
  //     create: (context) => ActivityDatabase(),
  //     child: const MyApp()
  //   )
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyTheme(),
        home: const welcomePage());
  }

  // ignore: non_constant_identifier_names
  ThemeData MyTheme() {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        primary: lightOrange,
        secondary: Colors.white,
      ),
      textTheme: GoogleFonts.snigletTextTheme(),
    );
  }
}
