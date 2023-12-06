import 'package:final_assignment_on_flutter/screens/arrival.dart';
import 'package:final_assignment_on_flutter/screens/bad_endings/cry_ending.dart';
import 'package:final_assignment_on_flutter/screens/introduction.dart';
import 'package:final_assignment_on_flutter/screens/start_screen.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const String startScreen = '/';
  static const String introduction = '/introduction';
  static const String arrival = '/arrival';
  static const String cryEnding = '/cryEnding';

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
      case arrival:
        return MaterialPageRoute(
          builder: (context) => const Arrival(),
        );
      case cryEnding:
        return MaterialPageRoute(
          builder: (context) => const CryEnding(),
        );
      default:
        throw const FormatException('Route not found!');
    }
  }
}
