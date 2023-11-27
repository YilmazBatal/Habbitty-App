import 'package:flutter/material.dart';
import 'package:habbitty/Pages/dailyquotespage.dart';
import 'package:habbitty/Pages/help.dart';
import 'package:habbitty/Pages/privacypolicypage.dart';
import 'package:habbitty/Pages/settingspage.dart';
import 'package:habbitty/Pages/profilepage.dart';
import 'package:habbitty/Pages/storepage.dart';
import 'package:habbitty/homepage.dart';
import 'package:habbitty/main.dart';

import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightOrange,
        title: const Text("Stats"),
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
                leading: Icon(Icons.home_rounded, color: navyBlue.withOpacity(0.5), size: 40,),
                title: Text("Home", style: TextStyle(fontSize: 25, color: navyBlue.withOpacity(0.5))),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                },
              ),
              // STATS
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                leading: Icon(Icons.equalizer_rounded, color: lightOrange, size: 40,),
                title: Text("Stats", style: TextStyle(fontSize: 25, color: lightOrange)),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 20, top: 20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, right: 16, left: 16, bottom: 8),
                    child: Text(
                      "Your Stats",
                      style: TextStyle(
                        fontSize: 30,
                        color: navyBlue
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 16, left: 16, bottom: 8),
                    child: Row(
                      children: [
                        Text(
                          "Current Strike : ",
                          style: TextStyle(
                            fontSize: 20,
                            color: navyBlue
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          streak.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            color: navyBlue
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Icon(Icons.local_fire_department, size: 30, color: lightOrange,),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    // height: 500, //70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        MyBoxShadow()
                      ],
                    ),
                    child: HeatMapCalendar(
                      defaultColor: Colors.white,
                      flexible: true,
                      colorMode: ColorMode.color,
                      datasets: {
                        DateTime(2023, 11, 27): 6,
                        DateTime(2023, 11, 25): 5,
                        DateTime(2023, 11, 29): 4,
                        DateTime(2023, 11, 30): 5,
                        DateTime(2023, 11, 28): 5,
                      },
                      colorsets: {
                        1: Colors.orange.shade50,
                        2: Colors.orange.shade100,
                        3: Colors.orange.shade200,
                        4: Colors.orange.shade300,
                        5: Colors.orange.shade400,
                        6: Colors.orange.shade500,
                      },
                      // onClick: (value) {
                      //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.toString())));
                      // },
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}