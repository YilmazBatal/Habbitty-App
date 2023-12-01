import 'package:flutter/material.dart';
import 'package:habbitty/Components/boxshadow.dart';
import 'package:habbitty/main.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MyToggleButtons extends StatefulWidget {
  const MyToggleButtons({super.key});

  @override
  State<MyToggleButtons> createState() => _MyToggleButtonsState();
}
class _MyToggleButtonsState extends State<MyToggleButtons> {
  
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [MyBoxShadow(navyBlue.withOpacity(0.5))],
          borderRadius: BorderRadius.circular(50)
        ),
        child: ToggleSwitch(
          minWidth: screenWidth,
          minHeight: 50,
          cornerRadius: 50.0,
          activeBgColors: [[lightOrange], [lightOrange]],
          activeFgColor: Colors.white,
          inactiveBgColor: Colors.white,
          inactiveFgColor: navyBlue,
          borderColor: [lightOrange],
          initialLabelIndex: 1,
          totalSwitches: 2,
          labels: const ['Habbitts', 'Tasks'],
          customTextStyles: const [
            TextStyle(
              fontSize: 24.0,
            )
          ],
          radiusStyle: true,
          onToggle: (index) {
            print('switched to: $index');
          },
        ),
      ),
    );
  }
}
