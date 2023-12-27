import 'package:flutter/material.dart';
import 'package:habbitty/Components/avatars.dart';
import 'package:habbitty/Components/boxshadow.dart';
import 'package:habbitty/Pages/dailyquotespage.dart';
import 'package:habbitty/Pages/help.dart';
import 'package:habbitty/Pages/privacypolicypage.dart';
import 'package:habbitty/Pages/settingspage.dart';
import 'package:habbitty/Pages/stats.dart';
import 'package:habbitty/Pages/profilepage.dart';
import 'package:habbitty/homepage.dart';
import 'package:habbitty/main.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: lightOrange,
        title: const Text(
          "Store",
          style: TextStyle(color: Colors.white),
        ),
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
                  color: navyBlue.withOpacity(0.5),
                  size: 40,
                ),
                title: Text("Home",
                    style: TextStyle(
                        fontSize: 25, color: navyBlue.withOpacity(0.5))),
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
                  color: lightOrange.withOpacity(1),
                  size: 40,
                ),
                title: Text("Store",
                    style: TextStyle(
                        fontSize: 25, color: lightOrange.withOpacity(1))),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Avatars",
                          style: TextStyle(fontSize: 35, color: navyBlue),
                        ),
                        Row(
                          children: [
                            Text(
                              "150 ",
                              style: TextStyle(fontSize: 30, color: navyBlue),
                            ),
                            Icon(
                              Icons.monetization_on,
                              size: 28,
                              color: navyBlue,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Text(
                        "Each avatars costs 20 ",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Icon(
                        Icons.monetization_on,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
            //array
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: avatarList.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 10,
                  maxCrossAxisExtent: 150, //your width
                  mainAxisExtent: 150, //your height
                ),
                itemBuilder: (BuildContext context, int index) => Avatars(
                  ID: avatarList[index][0],
                  avatarPath: avatarList[index][1],
                  avatarName: avatarList[index][2],
                  isOwned: avatarList[index][3],
                ),
              ),
            ),
            // buton
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 30, right: 30, bottom: 30),
              child: Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [MyBoxShadow(navyBlue)]),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const StorePage()));
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )),
                      splashFactory: NoSplash.splashFactory,
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(lightOrange),
                      foregroundColor: MaterialStateProperty.all(Colors.white)),
                  child: const Text(
                    "Buy",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
