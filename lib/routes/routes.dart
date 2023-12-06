import 'package:final_assignment_on_flutter/screens/arrival.dart';
import 'package:final_assignment_on_flutter/screens/bad_endings/cry_ending.dart';
import 'package:final_assignment_on_flutter/screens/introduction.dart';
import 'package:final_assignment_on_flutter/screens/inventory/inventory.dart';
import 'package:final_assignment_on_flutter/screens/rooms/entrance/entrance.dart';
import 'package:final_assignment_on_flutter/screens/rooms/entrance/entrance_examination.dart';
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
      default:
        throw const FormatException('Route not found!');
    }
  }
}
