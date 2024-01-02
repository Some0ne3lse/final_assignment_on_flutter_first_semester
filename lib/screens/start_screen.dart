import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/go_to_room_button.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getting the Cake Back!'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/cake.png',
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              GoToRoomButton(
                  doorRoute: RouteManager.introduction,
                  doorText: 'Start The Hunt'),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.of(context)
              //         .pushReplacementNamed(RouteManager.introduction);
              //   },
              //   child: const Text('Start The Hunt'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
