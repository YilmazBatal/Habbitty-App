import 'package:flutter/material.dart';
import 'package:habbitty/myDrawerHeader.dart';

Color lightOrange = const Color(0xffff9f1c); // Orange 1
Color darkOrange = const Color(0xFFff5417); // Orange 2
Color lightGreen = const Color(0xFF2de052); // Green 2
Color darkGreen = const Color(0xFF14a523); // Green 2
Color navyBlue = const Color(0xFF122663); // Navy 1

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightOrange,
        title: const Text("HABBITTY"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              myDrawerList(),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text("Home Page"),
      ),
    );
  }

  Widget myDrawerList(){
    return Container(

    );
  }
}