
// ignore_for_file: file_names
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:habbitty/main.dart';

class DateView extends StatelessWidget {
  const DateView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: EasyDateTimeLine(
        headerProps: const EasyHeaderProps(
          showHeader: false
        ),
        dayProps: EasyDayProps(
          activeDayStyle: DayStyle(
            borderRadius: 15,
            dayStrStyle: const TextStyle(color: Colors.white, fontSize: 15),
            dayNumStyle: const TextStyle(color: Colors.white, fontSize: 25),
            decoration: BoxDecoration(
              color: lightOrange,
              borderRadius: BorderRadius.circular(15)
            )
          ),
          inactiveDayStyle: DayStyle(
            borderRadius: 15,
            dayStrStyle: TextStyle(color: navyBlue, fontSize: 15),
            dayNumStyle: TextStyle(color: navyBlue, fontSize: 22),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: navyBlue.withOpacity(0.5)
              ),
              borderRadius: BorderRadius.circular(15)
            ),
          ),
          todayStyle: DayStyle(
            dayStrStyle: TextStyle(color: lightOrange, fontSize: 15),
            dayNumStyle: TextStyle(color: lightOrange, fontSize: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: lightOrange
              ),
              borderRadius: BorderRadius.circular(15),
            )
          ),
          
          dayStructure: DayStructure.dayNumDayStr,
          height: 70,
          width: 50,
          todayHighlightColor: Colors.white
        ),
        activeColor: lightOrange,
        initialDate: DateTime.now(),
      ),
    );
  }
}