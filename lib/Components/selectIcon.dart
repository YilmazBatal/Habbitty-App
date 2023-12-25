import 'package:flutter/material.dart';
import 'package:habbitty/Components/boxshadow.dart';
import 'package:habbitty/main.dart';


class selectIcon extends StatefulWidget {
  const selectIcon({super.key});

  @override
  State<selectIcon> createState() => _selectIconState();
}
class _selectIconState extends State<selectIcon> {
  List<bool> isSelected = [true, false, false, false, false, false];


  @override
  void initState() {
    isSelected = [true, false, false, false, false, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
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
          BoxConstraints.expand(width: constraints.maxWidth / 6),
        onPressed: (int index) {
          setState(() {
            for (int i = 0; i < isSelected.length; i++) {
              isSelected[i] = i == index;
            }
          });
        },
        children: const [
          Icon(Icons.school_rounded, size: 30),
          Icon(Icons.fitness_center_rounded, size: 30),
          Icon(Icons.shopping_bag_rounded, size: 30),
          Icon(Icons.pedal_bike_rounded, size: 30),
          Icon(Icons.code_rounded, size: 30),
          Icon(Icons.work, size: 30),
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
    );
  }
}
