import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:flutter/material.dart';

// The main page. Themes are here, and the code for starting the RouteManager
// Only thing missing is the text themes, but from what I could figure out,
// making a text theme wouldn't decrease the amount of code that much.

void main() {
  runApp(const MyGame());
}

class MyGame extends StatelessWidget {
  const MyGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          background: const Color.fromARGB(255, 69, 74, 73),
          primary: const Color.fromARGB(255, 29, 33, 33),
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.black,
          foregroundColor: Colors.white,
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.black,
        ),
        dialogBackgroundColor: Colors.white,
      ),
      initialRoute: RouteManager.startScreen,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
