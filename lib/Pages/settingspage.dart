// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habbitty/Components/alert_dialog.dart';
import 'package:habbitty/Components/boxshadow.dart';
import 'package:habbitty/Components/tooltip.dart';
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
        title: const Text(
          "Settings",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              SettingClick(),
            ],
          )
        ],
      ),
    );
  }
}

// Settings elements
class SettingClick extends StatelessWidget {
  void element_1(BuildContext context) {
    debugPrint('Theme Tıklandı!');
    CustomAlertDialog(
      context: context,
      contextName: "Theme",
      name_1: "Dark Theme",
      contextName_2: "Theme",
      name_2: "Light Theme",
    ).showAlertDialog();
  }

  void element_2(BuildContext context) {
    debugPrint('Language tıklandı!');
    CustomAlertDialog(
      context: context,
      contextName: "English",
      name_1: "English",
      contextName_2: "Turkish",
      name_2: "Turkish",
    ).showAlertDialog();
  }

  void element_3(BuildContext context) {
    print('Data Reset tıklandı!');
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: const Text(
          'Verilerinizi sıfırlamak istediğinize emin misiniz?',
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, 'NO'),
                  child: const Text(
                    'NO',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: lightOrange,
                  ),
                ).withContainerShadow(),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, 'YES'),
                  child: const Text('YES'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                ).withContainerShadow(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SettingsElements(
        Icons.notification_add_outlined,
        'Notification',
        'Bildirimleri aç/kapat.',
        useSwitch: true,
      ),
      SettingsElements(
        Icons.vibration_outlined,
        'Vibration',
        'Titreşimi aç/kapat.',
        useSwitch: true,
      ),
      SettingsElements(
        Icons.brush_outlined,
        'Customize',
        'Temayı değiştir.',
        useSwitch: false,
        onTap: () => element_1(context),
      ),
      SettingsElements(
        Icons.language_outlined,
        'Language',
        'Dil seçenekleri.',
        useSwitch: false,
        onTap: () => element_2(context),
      ),
      SettingsElements(
        Icons.data_array_outlined,
        'Data Reset & Restart',
        'Verileri sıfırlar.',
        useSwitch: false,
        onTap: () => element_3(context),
      ),
    ]);
  }
}

Container SettingsElements(iconName, name, content,
    {bool useSwitch = true, VoidCallback? onTap}) {
  Color navyBlue = const Color(0xFF122663);
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap:
            onTap, // Burada tıklama durumunda çağrılacak fonksiyonu belirliyoruz,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  iconName,
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
                  content: content,
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;
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

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}

extension ElevatedButtonWithShadow on ElevatedButton {
  Widget withContainerShadow() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: navyBlue.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            //offset: Offset(),
          ),
        ],
      ),
      child: this,
    );
  }
}
