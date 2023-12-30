// import 'package:flutter/material.dart';
// import 'package:habbitty/Models/habit.dart';
// import 'package:isar/isar.dart';
// import 'package:path_provider/path_provider.dart';

// class ActivityDatabase extends ChangeNotifier {
//   static late Isar isar;
  
//   // init db
//   static Future<void> initalize() async {
//     final dir = await getApplicationDocumentsDirectory();
//     isar = await Isar.open(
//       [HabitSchema],
//       directory: dir.path,
//     );
//   }

//   final List<Activity> currentActivities = [

//   ];

//   // create

//   Future<void> addActivity(String textFromUser, String timeFromUser, String iconFromUser) async {
//     Activity().text = textFromUser;
//     Activity().time = timeFromUser;
//     Activity().iconData = iconFromUser;

//     final newAvtivity = Activity();

//     await isar.writeTxn(() => isar.activitys.put(newAvtivity));

//     fetchActivities();
//   }

//   // read

//   Future<void> fetchActivities() async {
//     List<Activity> fetchedActivities = await isar.activitys.where().findAll();
//     currentActivities.clear();
//     currentActivities.addAll(fetchedActivities);
//     notifyListeners();
//   }

//   // update

//   Future<void> updateActivity(int id, String newText, String newTime, String newIcon) async{
//     final existingActivity = await isar.activitys.get(id);
//     if (existingActivity != null){
//       existingActivity.text = newText;
//       existingActivity.time = newTime;
//       existingActivity.iconData = newIcon;
//       await isar.writeTxn(() => isar.activitys.put(existingActivity));
//       await fetchActivities();
//     }
//   }

//   // delete

//   Future<void> deleteActivity(int id) async{
//     await isar.writeTxn(() => isar.activitys.delete(id));

//     await fetchActivities();
//   }
// }