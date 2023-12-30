import 'package:isar/isar.dart';

// generate files
// to run: dart run build_runner build
part 'habit.g.dart';

@Collection()
class Habit{
  Id id = Isar.autoIncrement;
  String? title = "";
  String? desc = "";
  String? iconData = "";
  DateTime? time = DateTime.now();
}