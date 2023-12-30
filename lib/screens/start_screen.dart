import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getting the Cake Back!'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/cake.png',
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed(RouteManager.introduction);
            },
            child: const Text('Start The Hunt'),
          ),
        ],
      ),
    );
  }
}
