import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:flutter/material.dart';

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
          background: Color.fromARGB(255, 69, 74, 73),
          primary: Color.fromARGB(255, 29, 33, 33),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.black,
          foregroundColor: Colors.white,
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.black,
        ),
        dialogBackgroundColor: Colors.white,
      ),
      initialRoute: RouteManager.startScreen,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
