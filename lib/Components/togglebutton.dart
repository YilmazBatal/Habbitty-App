import 'package:flutter/material.dart';
import 'package:habbitty/Components/boxshadow.dart';
import 'package:habbitty/main.dart';


class MyToggleButtons extends StatefulWidget {
  const MyToggleButtons({super.key});

  @override
  State<MyToggleButtons> createState() => _MyToggleButtonsState();
}
class _MyToggleButtonsState extends State<MyToggleButtons> {
  List<bool> isSelected = [true, false];


  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [MyBoxShadow(navyBlue.withOpacity(0.5))],
          borderRadius: BorderRadius.circular(15)
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          return ToggleButtons(
          borderRadius: BorderRadius.circular(15),
          renderBorder: false,
          isSelected: isSelected,
          fillColor: lightOrange,
          selectedColor: Colors.white,
          color: navyBlue,
          constraints:
            BoxConstraints.expand(width: constraints.maxWidth / 2),
          onPressed: (int index) {
            setState(() {
              for (int i = 0; i < isSelected.length; i++) {
                isSelected[i] = i == index;
              }
            });
          },
          children: const [
            Text("Habbits", style: TextStyle(fontSize: 20)),
            Text("Tasks", style: TextStyle(fontSize: 20))
          ],
          );
        },
    )
    // return Center(
    //   child: Padding(
    //     padding: const EdgeInsets.only(left: 30.0, right: 30, top: 20, bottom: 15),
    //     child: Container(
    //       width: double.infinity,
    //       height: 40,
    //       decoration: BoxDecoration(
    //         color: Colors.white,
    //         boxShadow: [MyBoxShadow(navyBlue.withOpacity(0.5))],
    //         borderRadius: BorderRadius.circular(15)
    //       ),
    //       child: Center(
    //         child:  FkToggle(
    //           width: 100,
    //           height: 50,
    //           labels: const ['one', 'two'],
    //           fontSize: 24,
    //           cornerRadius: 4,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
      ));
  }
}
