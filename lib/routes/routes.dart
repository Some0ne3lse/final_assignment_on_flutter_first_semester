import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/screens/arrival.dart';
import 'package:final_assignment_on_flutter/screens/bad_endings/cry_ending.dart';
import 'package:final_assignment_on_flutter/screens/introduction.dart';
import 'package:final_assignment_on_flutter/screens/rooms/entrance/entrance.dart';
import 'package:final_assignment_on_flutter/screens/rooms/entrance/entrance_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/kitchen/kitchen.dart';
import 'package:final_assignment_on_flutter/screens/rooms/kitchen/kitchen_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/library/library.dart';
import 'package:final_assignment_on_flutter/screens/rooms/library/library_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/main_hall/main_hall.dart';
import 'package:final_assignment_on_flutter/screens/rooms/storage/storage.dart';
import 'package:final_assignment_on_flutter/screens/rooms/storage/storage_examination.dart';
import 'package:final_assignment_on_flutter/screens/start_screen.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const String startScreen = '/';
  static const String introduction = '/introduction';
  static const String arrival = '/arrival';
  static const String cryEnding = '/cryEnding';
  static const String inventory = '/inventory';
  static const String entrance = '/entrance';
  static const String entranceExamination = '/entranceExamination';
  static const String kitchen = '/kitchen';
  static const String kitchenExamination = '/kitchenExamination';
  static const String storage = '/storage';
  static const String storageExamination = '/storageExamination';
  static const String library = '/library';
  static const String libraryExamination = '/libraryExamination';
  static const String mainHall = '/mainHall';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case startScreen:
        return MaterialPageRoute(
          builder: (context) => const StartScreen(),
        );
      case introduction:
        return MaterialPageRoute(
          builder: (context) => const Introduction(),
        );
      case inventory:
        return MaterialPageRoute(
          builder: (context) => const Inventory(),
        );
      case arrival:
        return MaterialPageRoute(
          builder: (context) => const Arrival(),
        );
      case cryEnding:
        return MaterialPageRoute(
          builder: (context) => const CryEnding(),
        );
      case entrance:
        return MaterialPageRoute(
          builder: (context) => const Entrance(),
        );
      case entranceExamination:
        return MaterialPageRoute(
          builder: (context) => const EntranceExamination(),
        );
      case kitchen:
        return MaterialPageRoute(
          builder: (context) => const Kitchen(),
        );
      case kitchenExamination:
        return MaterialPageRoute(
          builder: (context) => const KitchenExamination(),
        );
      case storage:
        return MaterialPageRoute(
          builder: (context) => const Storage(),
        );
      case storageExamination:
        return MaterialPageRoute(
          builder: (context) => StorageExamination(),
        );
      case library:
        return MaterialPageRoute(
          builder: (context) => const Library(),
        );
      case libraryExamination:
        return MaterialPageRoute(
          builder: (context) => const LibraryExamination(),
        );
      case mainHall:
        return MaterialPageRoute(
          builder: (context) => const MainHall(),
        );
      default:
        throw const FormatException('Route not found!');
    }
  }
}
