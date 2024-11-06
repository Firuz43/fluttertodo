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

  // Get first date of app startup (for heatmap)



  /*

  C R U D X O P E R A T I O N S
  
   */


  // C R E A T E - add a new habbit 

  // R E A D - read saved habbits from db

  // U P D A T E- edit habbit name

  // D E L E T E - delete habbit from db
}