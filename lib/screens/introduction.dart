import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/go_to_screen_button.dart';
import 'package:final_assignment_on_flutter/text_files/introduction.dart';
import 'package:flutter/material.dart';

// The screen for the Introduction. You have two options here, one that starts
// the game, and one that makes you lose the game.

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getting the cake back'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      introductionText(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const GoToScreenButton(
                      routeManagerLocation: RouteManager.cryEnding,
                      text: 'Sit down and cry with your wife'),
                  const SizedBox(
                    height: 10,
                  ),
                  const GoToScreenButton(
                      routeManagerLocation: RouteManager.arrival,
                      text: 'Go to Bob the Burly mans home'),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
