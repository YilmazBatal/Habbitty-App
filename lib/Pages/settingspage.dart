import 'package:flutter/material.dart';
import 'package:habbitty/Pages/dailyquotespage.dart';
import 'package:habbitty/Pages/help.dart';
import 'package:habbitty/Pages/privacypolicypage.dart';
import 'package:habbitty/Pages/stats.dart';
import 'package:habbitty/Pages/profilepage.dart';
import 'package:habbitty/Pages/storepage.dart';
import 'package:habbitty/homepage.dart';
import 'package:habbitty/main.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightOrange,
        title: const Text("Settings", style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SettingsElements(
                      Icons.notifications_outlined,
                      "Notifications",
                      Icons.info_outline,
                      "\u{1F6C8} Bildirimleri açıp kapatma",
                      useSwitch: true),
                  const Divider(
                    thickness: 3,
                  ),
                  SettingsElements(Icons.vibration, "Vibration",
                      Icons.info_outline, "\u{1F6C8} Titreşim açıp kapatma",
                      useSwitch: true),
                  const Divider(
                    thickness: 3,
                  ),
                  SettingsElements(Icons.brush_outlined, "Customize",
                      Icons.info_outline, "\u{1F6C8} Tema Seçenekleri",
                      useSwitch: false),
                  const Divider(
                    thickness: 3,
                  ),
                  SettingsElements(Icons.language, "Language",
                      Icons.info_outline, "\u{1F6C8} Dil seçenekleri",
                      useSwitch: false),
                  const Divider(
                    thickness: 3,
                  ),
                  SettingsElements(
                      Icons.sd_storage_outlined,
                      "Data Reset & Restart",
                      Icons.info_outline,
                      "\u{1F6C8} Verileriniz sıfırlanır",
                      useSwitch: false),
                  const Divider(
                    thickness: 3,
                  ),
                ],
              ),
            ),
          ),
        ],
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
                                  TextStyle(fontSize: 24, color: Colors.white)),
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
                  color: lightOrange,
                  size: 40,
                ),
                title: Text("Settings",
                    style: TextStyle(fontSize: 25, color: lightOrange)),
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
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

// ignore: non_constant_identifier_names
Container SettingsElements(ikon, name, info, icerik, {bool useSwitch = true}) {
  Color navyBlue = const Color(0xFF122663);
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Icon(
              ikon,
              size: 30,
              color: navyBlue,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 25, color: navyBlue),
            ),
          ],
        ),
        Row(
          children: [
            useSwitch
                ? const SwitchExample()
                : Container(), // Burada SwitchExample'ı kullanıp kullanmamayı kontrol ediyoruz
            TooltipSample(
              icerik: icerik,
            )
          ],
        )
      ]),
    ),
  );
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;
  Color navyBlue = const Color(0xFF122663);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: navyBlue.withOpacity(0.5), width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Switch(
        // This bool value toggles the switch.
        value: light,
        activeColor: lightOrange,
        activeTrackColor: Colors.white,
        inactiveTrackColor: Colors.white,
        onChanged: (bool value) {
          // This is called when the user toggles the switch.
          setState(() {
            light = value;
          });
        },
      ),
    );
  }
}

class TooltipSample extends StatelessWidget {
  final String icerik;

  const TooltipSample({Key? key, required this.icerik, required})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color navyBlue = const Color(0xFF122663);
    return Tooltip(
      message: icerik,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: navyBlue.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
          ),
        ],
        gradient: const LinearGradient(colors: <Color>[
          Color.fromARGB(255, 255, 255, 255),
          Color.fromARGB(255, 255, 255, 255)
        ]),
      ),
      height: 50,
      padding: const EdgeInsets.all(8.0),
      preferBelow: false,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Color(0xFF122663),
      ),
      showDuration: const Duration(milliseconds: 70),
      waitDuration: const Duration(seconds: 1),
      child: const Icon(
        Icons.info_outline,
        size: 30,
      ),
    );
  }
}
