// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    Color lightOrange = const Color(0xffff9f1c); // Orange 1
    Color darkOrange = const Color(0xFFff5417); // Orange 2
    Color lightGreen = const Color(0xFF2de052); // Green 2
    Color darkGreen = const Color(0xFF14a523); // Green 2
    Color navyBlue = const Color(0xFF122663); // Navy 1

    List<bool> selectedActivities = List.generate(2, (index) => true);

    // double screenWidth = MediaQuery.of(context).size.width;    // Gives the width
    // double screenheight = MediaQuery.of(context).size.height;  // Gives the height

    const orangeHeader = 242.5; // 280.0

    return MaterialApp(
      title: 'Habbity - Tracker',
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(
        Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: lightOrange,
          elevation: 0,
          bottomOpacity: 0,
          toolbarHeight: 0,
        ),
        body: Column(
          children: [
            // Header
            Container(
              height: orangeHeader,
              // width: double.infinity,
              // Orange Gradient
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter, end: Alignment.bottomCenter,
                  colors: [
                    lightOrange,
                    darkOrange,
                  ],
                ),
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40),)
              ),
              // Header Rows parent
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 0,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  // Header Rows
                  children: [
                    // Hamburger Menu & Welcome Text
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.menu, size: 40, color: Colors.white,),
                        Text("Good Morning!",
                          style: TextStyle(
                            color: Colors.white, fontSize: 28
                          ),
                        )
                      ],
                    ),
                    // Money & Date Label
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.monetization_on, size: 28, color: Colors.white70,),
                            Text("350",
                              style: TextStyle(
                                color: Colors.white70, fontSize: 24
                              ),
                            ),
                          ],
                        ),
                        Text("29th Aug",
                          style: TextStyle(
                            color: Colors.white70, fontSize: 24
                          ),
                        )
                      ],
                    ),
                    // Mini Calendar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: HabbittyBox(
                              65.0,
                              navyBlue,
                              Colors.white,
                              Colors.white,
                              const Center(
                                // children: [
                                
                                // ],
                              )
                            )
                          ),
                        ),
                      ],
                    ),
                    // Overflowing Progress Bar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        HabbittyBox(
                          50.0,
                          navyBlue,
                          Colors.white,
                          Colors.white,
                          Center(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // mainAxisSize: MainAxisSize.
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Progress",
                                          textAlign: TextAlign.center,
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                            color: Color(0Xff122663),
                                            fontSize: 20
                                          ),
                                        ),
                                        Text(
                                          "10/10",
                                          textAlign: TextAlign.center,
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                            color: Color(0Xff122663),
                                            fontSize: 20
                                          ),
                                        ),
                                      ],
                                    ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          height: 8,
                                          // ClipRRect gives border to child
                                          child: ClipRRect(
                                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                                            child: GradientProgressIndicator(
                                              gradient: LinearGradient(
                                                colors: [
                                                  darkOrange,
                                                  lightOrange,
                                                ],
                                              ),
                                            ),
                                          )
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            // Content
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 5,),
                  child: Column(
                    children: [
                      // Search Bar
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: navyBlue.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Material(
                                  borderRadius: BorderRadius.circular(15),
                                  child: SizedBox(
                                    height: 35,
                                    child: TextField(
                                      textAlign: TextAlign.start,
                                      decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                                        isDense: true,
                                        // Container for Search Icon
                                        prefixIcon: Container(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                lightOrange,
                                                darkOrange
                                              ],
                                            ),
                                            borderRadius: BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                color: navyBlue.withOpacity(0.5),
                                                spreadRadius: 3,
                                                blurRadius: 5,
                                              )
                                            ],
                                          ),
                                          child: const Icon(Icons.search, color: Colors.white, size: 28,),
                                        ),
                                        // Hint Text
                                        hintText: "  What are you looking for...",
                                        hintStyle: TextStyle(
                                          color: navyBlue.withOpacity(0.5)
                                        ),
                                        // Icon Radius
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                      ),
                                      style: TextStyle(
                                        color: navyBlue.withOpacity(1),
                                        fontSize: 18
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ),
                          ],
                        ),
                      ),
                      // Radio Row
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12.5, bottom: 12.5),
                              child: HabbittyBox(
                                35,
                                navyBlue,
                                Colors.white,
                                Colors.white,
                                 Center(
                                  child: ToggleButtons(
                                    onPressed: (int index){
                                      setState((){
                                        selectedActivities[index] = !selectedActivities[index];
                                      });
                                    },
                                    isSelected: selectedActivities,
                                    children: const [
                                      Text("Habbitty"),
                                      Text("Tasks")
                                    ],
                                  ),
                                )
                              )
                            ),
                          ),
                        ],
                      ),        
                      // Activities
                      Column(
                        children: [
                          UncheckedActivity(navyBlue, "10 Push Ups", "10:00 AM - 10:15 AM"),
                          CheckedActivity(darkGreen, lightGreen, "10 Push Ups", "10:00 AM - 10:15 AM"),
                          UncheckedActivity(navyBlue, "10 Push Ups", "10:00 AM - 10:15 AM"),
                          CheckedActivity(darkGreen, lightGreen, "10 Push Ups", "10:00 AM - 10:15 AM"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Nav Menu / Bottom Bar
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
              color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF122663).withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                  ),
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home,color: lightOrange, size: 50,),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bar_chart,color: navyBlue, size: 50,),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white.withOpacity(0.0),
                          boxShadow: [
                            BoxShadow(
                              color: darkOrange.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10,
                            )
                          ]
                        ),
                        child: ShaderMask(
                          shaderCallback: (rect) => LinearGradient(
                            colors: [
                              lightOrange,
                              darkOrange,
                            ],
                            begin: Alignment.topCenter,
                          ).createShader(rect),
                          child: const Icon(Icons.add_circle, color: Colors.white, size: 60,),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person, color: navyBlue, size: 50,),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.store, color: navyBlue, size: 50,),
                    ],
                  ),
                ],
              ),
            ),
          ]
        )
      )
    );
  }

  Padding CheckedActivity(Color darkGreen, Color lightGreen, String activityName, String activityTime) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          HabbittyBox(
            70,
            darkGreen,
            lightGreen,
            darkGreen,
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "${activityName}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                        ),
                        Text(
                          "${activityTime}",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: 70,
                          decoration: BoxDecoration(
                            color: lightGreen,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: darkGreen.withOpacity(1),
                                spreadRadius: 3,
                                blurRadius: 5,
                              ),
                            ]
                          ),
                          child: const Icon(Icons.task_alt_rounded, size: 50, color: Colors.white),    
                        )
                      )
                    ],
                  )
                ]
              ),
              
            )
          )
        ],
      ),
    );
  }
  Padding UncheckedActivity(Color navyBlue, String activityName, String activityTime) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          HabbittyBox(
            70,
            navyBlue,
            Colors.white,
            Colors.white,
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "${activityName}",
                          style: TextStyle(
                            color: navyBlue,
                            fontSize: 20
                          ),
                        ),
                        Text(
                          "${activityTime}",
                          style: TextStyle(
                            color: navyBlue.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFF122663).withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 5,
                              ),
                            ]
                          ),
                          child: Icon(Icons.fitness_center, size: 55, color: navyBlue),
                        )
                      )
                    ],
                  )
                ]
              ),

            )
          )
        ],
      ),
    );
  }

  // Function to call Boxes - Takes 3 Param
  // ignore: non_constant_identifier_names
  Expanded HabbittyBox(double boxHeight, Color boxShadowColor, Color boxColor, Color boxColor2, Center myChild) {
    return Expanded(
      child: Container(
        height: boxHeight,
        width: 200,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors:[boxColor, boxColor2]),
          color: boxColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: boxShadowColor.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
            ),
          ],
        ),
        child: myChild,
      ),
    );
  }
}
// Google Font Library
ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.snigletTextTheme(baseTheme.textTheme),
  );

}