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


  // List of habits
  final List<Habit> currentHabbits = [];

  // C R E A T E - add a new habbit 
  Future<void> addHabit(String habitName) async {
    //create a new habit
    final newHabit = Habit()..name = habitName;

    //save to db
    await isar.writeTxn(() => isar.habits.put(newHabit));

    // re-read from db
    readHabits();
  }



  // R E A D - read saved habbits from db
  Future<void> readHabits() async {
    // fetch all habits from db
    List<Habit> fetchedHabits = await isar.habits.where().findAll();

    // give to current habits
    currentHabbits.clear();
    currentHabbits.addAll(fetchedHabits);

    //update UI
    notifyListeners();
  }

  // U P D A T E- edit habbit name

  // D E L E T E - delete habbit from db
}