// import 'package:habbitty/Components/dynamictextfield.dart'; 
import 'package:flutter/material.dart';
import 'package:habbitty/Components/dataTimeLine.dart';
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
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// Variables
var toBeCompletedKey = todaysHabitList.length;
var completedKey = 0;


class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    loadData();
    super.initState();
  }

  void loadData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      completedKey = prefs.getInt("done") ?? 0;
    });
  }

  void updateData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      int doneCount = 0;
      for (var i = 0; i < todaysHabitList.length; i++) {
        if (todaysHabitList[i][4] == true) {
          doneCount++;
        }
      }

      prefs.setInt("done", doneCount);
      completedKey = prefs.getInt("done") ?? 0;
      prefs.setInt("toBeDone", todaysHabitList.length);
      toBeCompleted = prefs.getInt("toBeDone") ?? 0;

      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: lightOrange,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
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
                    decoration: BoxDecoration(color: lightOrange),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            size: 100,
                            color: Colors.white,
                          ),
                          Text("<User Name>",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // HOME
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(
                  Icons.home_rounded,
                  color: lightOrange,
                  size: 40,
                ),
                title: Text("Home",
                    style: TextStyle(fontSize: 25, color: lightOrange)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage()));
                },
              ),
              // STATS
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(
                  Icons.equalizer_rounded,
                  color: navyBlue.withOpacity(0.5),
                  size: 40,
                ),
                title: Text("Stats",
                    style: TextStyle(
                        fontSize: 25, color: navyBlue.withOpacity(0.5))),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const StatsPage()));
                },
              ),
              // PROFILE
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(
                  Icons.account_circle_outlined,
                  color: navyBlue.withOpacity(0.5),
                  size: 40,
                ),
                title: Text("Profile",
                    style: TextStyle(
                        fontSize: 25, color: navyBlue.withOpacity(0.5))),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfilePage()));
                },
              ),
              // STORE
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(
                  Icons.shopping_bag_outlined,
                  color: navyBlue.withOpacity(0.5),
                  size: 40,
                ),
                title: Text("Store",
                    style: TextStyle(
                        fontSize: 25, color: navyBlue.withOpacity(0.5))),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const StorePage()));
                },
              ),
              // SETTINGS
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(
                  Icons.settings_outlined,
                  color: navyBlue.withOpacity(0.5),
                  size: 40,
                ),
                title: Text("Settings",
                    style: TextStyle(
                        fontSize: 25, color: navyBlue.withOpacity(0.5))),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsPage()));
                },
              ),
              // QUOTE OF THE DAY
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(
                  Icons.format_quote,
                  color: navyBlue.withOpacity(0.5),
                  size: 40,
                ),
                title: Text("Daily Quotes",
                    style: TextStyle(
                        fontSize: 25, color: navyBlue.withOpacity(0.5))),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DailyQuotePage()));
                },
              ),
              // HELP
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(
                  Icons.question_mark_rounded,
                  color: navyBlue.withOpacity(0.5),
                  size: 40,
                ),
                title: Text("Help",
                    style: TextStyle(
                        fontSize: 25, color: navyBlue.withOpacity(0.5))),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HelpPage()));
                },
              ),
              // PRIVACY POLICY
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(
                  Icons.lock_outline,
                  color: navyBlue.withOpacity(0.5),
                  size: 40,
                ),
                title: Text("Privacy Policy",
                    style: TextStyle(
                        fontSize: 25, color: navyBlue.withOpacity(0.5))),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyPage()));
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(children: [
        // Header
        Container(
            // height: 225,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                color: lightOrange),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25.0, right: 25, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(welcomeMessage,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 32)),
                        Row(
                          children: [
                            Text(credits.toString(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            const Icon(
                              Icons.monetization_on,
                              size: 28,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25.0, right: 25, bottom: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            // height: 70, //70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [MyBoxShadow(navyBlue)],
                            ),
                            child: const DateView(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25, right: 25, bottom: 1),
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
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Progress",
                                          style: TextStyle(
                                              color: navyBlue, fontSize: 16)),
                                      Text(
                                        "$completedKey/$toBeCompleted",
                                        style: TextStyle(
                                            color: navyBlue, fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: LinearPercentIndicator(
                                          animation: true,
                                          lineHeight: 5.0,
                                          animationDuration: 2000,
                                          percent: (completedKey / toBeCompleted),
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
              ),
            )),
        // Bottom

        // Text Field & Toggle
        // Column(
        //   children: [
        //     // DynamicTextField(
        //     //     hintText: "Search",
        //     //     controller: TextEditingController(),
        //     //     suffixIcon: Icon(
        //     //       Icons.search,
        //     //       color: navyBlue,
        //     //     ),
        //     //     onChanged: (value) {}),
        //   ],
        // ),
        // 
        Expanded(
          child: ListView.builder(
            itemCount: todaysHabitList.length + 1, // Add 1 for the toggle button
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                // This is the first item, return the toggle button
                return const MyToggleButtons();
              } else {
                // Subtract 1 from index to get the correct habit item
                index -= 1;
                return HabitTile(
                  ID: todaysHabitList[index][0],
                  itemTitle: todaysHabitList[index][1],
                  itemTime: todaysHabitList[index][2],
                  itemIcon: todaysHabitList[index][3],
                  isDone: todaysHabitList[index][4],
                );
              }
            },
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState(() {
          //   updateData();
          // });
          updateData();
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CreatePage()));
        },
        backgroundColor: lightOrange,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(
            Icons.add_rounded,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Search() {

  }
}


// @override
//   void initState() {
//     loadMyHabit();
//     super.initState();
//   }

//   void loadMyHabit() async {
//     final prefs = await SharedPreferences.getInstance();

//     setState(() {
//       this.ID = prefs.getBool("$this.ID") ?? 0;
//     });
//   }
//   void saveMyHabit() async {
    
//     // Load and obtain the shared preferences for this app.
//     final prefs = await SharedPreferences.getInstance();

//     // Save the counter value to persistent storage under the 'counter' key.
//     await prefs.setBool('$this.ID', true);
    
//   }
