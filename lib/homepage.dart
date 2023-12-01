import 'package:flutter/material.dart';
import 'package:habbitty/Components/habittile.dart';
import 'package:habbitty/Pages/createpage.dart';
import 'package:habbitty/Pages/dailyquotespage.dart';
import 'package:habbitty/Pages/help.dart';
import 'package:habbitty/Pages/privacypolicypage.dart';
import 'package:habbitty/Pages/settingspage.dart';
import 'package:habbitty/Pages/stats.dart';
import 'package:habbitty/Pages/profilepage.dart';
import 'package:habbitty/Pages/storepage.dart';
import 'package:habbitty/main.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:habbitty/Components/boxshadow.dart';
import 'package:habbitty/Components/togglebutton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {

    List todaysHabitList = [
      // [name,time,icon,isDone]
      ["10x Push Ups", "10:00 AM - 10:15 AM", Icons.fitness_center_rounded, true],
      ["Study Math", "12:00 AM - 14:15 AM", Icons.school_rounded, false],
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightOrange,
        title: const Text("Home", style: TextStyle(color: Colors.white),),
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              SizedBox(
                height: 200,
                child: DrawerHeader(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: lightOrange
                    ),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_circle_outlined, size: 100, color: Colors.white,),
                          Text("<User Name>", style: TextStyle(fontSize: 24, color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // HOME
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(Icons.home_rounded, color: lightOrange, size: 40,),
                title: Text("Home", style: TextStyle(fontSize: 25, color: lightOrange)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                },
              ),
              // STATS
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(Icons.equalizer_rounded, color: navyBlue.withOpacity(0.5), size: 40,),
                title: Text("Stats", style: TextStyle(fontSize: 25, color: navyBlue.withOpacity(0.5))),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const StatsPage()));
                },
              ),
              // PROFILE
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(Icons.account_circle_outlined, color: navyBlue.withOpacity(0.5), size: 40,),
                title: Text("Profile", style: TextStyle(fontSize: 25, color: navyBlue.withOpacity(0.5))),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProfilePage()));
                },
              ),
              // STORE
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(Icons.shopping_bag_outlined, color: navyBlue.withOpacity(0.5), size: 40,),
                title: Text("Store", style: TextStyle(fontSize: 25, color: navyBlue.withOpacity(0.5))),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const StorePage()));
                },
              ),
              // SETTINGS
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(Icons.settings_outlined, color: navyBlue.withOpacity(0.5), size: 40,),
                title: Text("Settings", style: TextStyle(fontSize: 25, color: navyBlue.withOpacity(0.5))),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SettingsPage()));
                },
              ),
              // QUOTE OF THE DAY
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(Icons.format_quote, color: navyBlue.withOpacity(0.5), size: 40,),
                title: Text("Daily Quotes", style: TextStyle(fontSize: 25, color: navyBlue.withOpacity(0.5))),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DailyQuotePage()));
                },
              ),
              // HELP
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(Icons.question_mark_rounded, color: navyBlue.withOpacity(0.5), size: 40,),
                title: Text("Help", style: TextStyle(fontSize: 25, color: navyBlue.withOpacity(0.5))),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HelpPage()));
                },
              ),
              // PRIVACY POLICY
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(Icons.lock_outline, color: navyBlue.withOpacity(0.5), size: 40,),
                title: Text("Privacy Policy", style: TextStyle(fontSize: 25, color: navyBlue.withOpacity(0.5))),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PrivacyPolicyPage()));
                },
              ),
            ],
          ),
        ),
      ),
      
      body: Column(
        children: [
          // Header
          Container(
            height: 225,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: lightOrange
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(welcomeMessage, style: const TextStyle(color: Colors.white, fontSize: 32)),
                      Row(
                        children: [
                          Text(credits.toString(), style: const TextStyle(color: Colors.white, fontSize: 30)),
                          const Icon(Icons.monetization_on, size: 28, color: Colors.white,),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 70, //70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              MyBoxShadow(navyBlue)
                            ],
                          ),
                          child: Container(
                          
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, bottom: 1),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              MyBoxShadow(navyBlue),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Progress", style: TextStyle(color: navyBlue, fontSize: 16)),
                                    Text("$completed/$toBeCompleted", style: TextStyle(color: navyBlue, fontSize: 16),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: LinearPercentIndicator(
                                        animation: true,
                                        lineHeight: 5.0,
                                        animationDuration: 2000,
                                        percent: (completed/toBeCompleted),
                                        progressColor: darkOrange,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ),
          // Bottom
          Expanded(
            child: SizedBox(
              height: 5000,
              width: 5000,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                    child: Row(
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
                                        color: lightOrange,
                                        borderRadius: BorderRadius.circular(15), // icon raidus
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
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: MyToggleButtons(),
                  ),
                  ListView.builder(
                    itemCount: todaysHabitList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return HabitTile(
                        itemTitle: todaysHabitList[index][0],
                        itemTime: todaysHabitList[index][1],
                        itemIcon: todaysHabitList[index][2],
                        isDone: todaysHabitList[index][3],
                      );
                    },
                  ),
                  // TagField(),
                ],
              ),
            ),
          )
        
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CreatePage()));
        },
        backgroundColor: lightOrange,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(Icons.add_rounded, size: 50,),
        ),
      ),
    );
  }
}