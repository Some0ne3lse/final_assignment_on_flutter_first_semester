import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bob_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/drama_actions_text/attack_text.dart';
import 'package:flutter/material.dart';

class BobAttack extends StatelessWidget {
  const BobAttack({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          ImageAndText(
            image: 'assets/images/bob_awake.png',
            text: bobAttack(),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteManager.runAwayFromBob, (Route<dynamic> route) => false);
            },
            child: const Text('Run away from Bob'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteManager.giveUpOnLifeBob,
                  (Route<dynamic> route) => false);
            },
            child: const Text('Give up on life'),
          ),
        ],
      ),
    );
    String itemToCheck = 'Axe';
    if (pickedUpItems.any((item) => item.title == itemToCheck)) {
      mainContent = Center(
        child: Column(
          children: [
            ImageAndText(
              image: 'assets/images/bob_awake.png',
              text: bobAttack(),
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
                        'You prepare your axe. When Bob comes running towards you, you strike. You kill him with one strike.'),
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
              child: const Text('Stand your ground. Prepare your axe'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.runAwayFromBob,
                    (Route<dynamic> route) => false);
              },
              child: const Text('Run away from Bob'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.giveUpOnLifeBob,
                    (Route<dynamic> route) => false);
              },
              child: const Text('Give up on life'),
            ),
          ],
        ),
      );
    }

    return ScreenBase(mainContent: mainContent, locationName: 'Bob');
  }
}
