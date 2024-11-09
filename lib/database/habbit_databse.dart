import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todoapp/models/app_settings.dart';
import 'package:todoapp/models/habit.dart';

class HabbitDatabse extends ChangeNotifier{
  static late Isar isar;
  /*
  
  S E T U P

  
   */

  // I N I T I A L I Z E  - D A T A B A S E
  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [HabitSchema, AppSettingsSchema], 
      directory: dir.path,
    );
  }

  // Save first date of app startup (for heatmap)
  Future<void> saveFirstLauncDate() async {
    final existingSettings = await isar.appSettings.where().findFirstSync();
    if (existingSettings == null) {
      final settings = AppSettings()..firstLauncDate = DateTime.now();
      await isar.writeTxn(() => isar.appSettings.put(settings));
    }
  }

  // Get first date of app startup (for heatmap)
  Future<DateTime?> getFirstLaunchDate() async {
    final settings = await isar.appSettings.where().findFirst();
    return settings?.firstLauncDate;
  }


  /*

  C R U D X O P E R A T I O N S
  
  */


  // List of habits //ss
  final List<Habit> currentHabbits = [];

  // C R E A T E - add a new habbit 
  Future<void> addHabit(String habitName) async {

    //create a new habit
    final newHabit = Habit()..name = habitName;

    //save to db
    await isar.writeTxn(() => isar.habits.put(newHabit));

    // re-read from db//
    readHabits();
  }



  // R E A D - read saved habbits from db
  Future<void> readHabits() async {

    // fetch all habits from db
    List<Habit> fetchedHabits = await isar.habits.where().findAll();

    // give to current habits //
    currentHabbits.clear();
    currentHabbits.addAll(fetchedHabits);

    //update UI
    notifyListeners();
  }

  // U P D A T E - check habit on and off
  Future<void> updateHabitCompletion(int id, bool isCompleted) async {

    // find the specific habit
    final habit = await isar.habits.get(id);

    // update completion status
    if(habit != null) {
      await isar.writeTxn(() async {

        // if habit is completed -> add the current date to the completedDays list
        if(isCompleted && !habit.completedDays.contains(DateTime.now())) {
          // today
          final today = DateTime.now();

          // add the current date if it's not already in the list
          habit.completedDays.add(
            DateTime(
              today.year,
              today.month,
              today.day
            )
          );
        }

        // if habit is NOT completed -> remove the current date from the list
        else {
          // remove the current date if the habit is marked as not completed
          habit.completedDays.removeWhere((date)=> 
          date.year == DateTime.now().year && 
          date.month == DateTime.now().month && 
          date.day == DateTime.now().day
          );
        }

        // save the updated habits back to the db
        await isar.habits.put(habit);
      });
    }
  }

  // U P D A T E - edit habit name
  Future<void> updateHabitName(int id, String newName) async {
    // find the specific habit
    final habit = await isar.habits.get(id);

    //update habit name
    if(habit != null) {

      //update name
      await isar.writeTxn(() async {
        habit.name = newName;

        //save upadted habit back to the db
        await isar.habits.put(habit);
      });
    }


    //re-read from db
    readHabits();
  }

  // D E L E T E - delete habit
  Future<void> deleteHabit(int id) async {
    //perform the delete
    await isar.writeTxn(() async {
      await isar.habits.delete(id);
    });

    //re-read from db
    readHabits();
  }
}