import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Getting the Cake Back!',
          style: TextStyle(color: Colors.white),
        ),
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
              Navigator.of(context).pushNamed(RouteManager.introduction);
            },
            child: const Text('Start The Hunt'),
          ),
        ],
      ),
    );
  }
}
