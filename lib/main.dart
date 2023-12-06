import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyGame());
}

class MyGame extends StatelessWidget {
  const MyGame({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: RouteManager.startScreen,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
