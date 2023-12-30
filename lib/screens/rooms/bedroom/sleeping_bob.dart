import 'package:final_assignment_on_flutter/buttons/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bob_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

class SleepingBob extends StatelessWidget {
  const SleepingBob({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          ImageAndText(
            image: 'assets/images/bob.png',
            text: bobDescription(),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteManager.bobAttack, (Route<dynamic> route) => false);
            },
            child: const Text('Try to take the book under the pillow'),
          ),
          GoBackFromItem(
              routeManagerLocation: RouteManager.bedroom,
              leaveItemText: 'Leave Bob alone'),
        ],
      ),
    );
    String itemToCheck = 'Axe';
    if (pickedUpItems.any((item) => item.title == itemToCheck)) {
      mainContent = Center(
        child: Column(
          children: [
            ImageAndText(
              image: 'assets/images/bob.png',
              text: bobDescription(),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: const Text(
                        'You lift your axe and swing it down on Bob. You kill him with one strike.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          bobDead = true;
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              RouteManager.bedroom,
                              (Route<dynamic> route) => false);
                        },
                        child: const Text('Okay!'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Kill Bob in his sleep'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.bobAttack, (Route<dynamic> route) => false);
              },
              child: const Text('Try to take the book under the pillow'),
            ),
            GoBackFromItem(
                routeManagerLocation: RouteManager.bedroom,
                leaveItemText: 'Leave Bob alone'),
          ],
        ),
      );
    }
    return ScreenBase(mainContent: mainContent, locationName: 'Bob');
  }
}
