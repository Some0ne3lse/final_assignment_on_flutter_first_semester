import 'package:final_assignment_on_flutter/buttons_for_many_places/go_to_screen_button.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bedroom_buttons/stand_your_ground.dart';
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
          GoToScreenButton(
              doorRoute: RouteManager.runAwayFromBob,
              doorText: 'Run away from Bob'),
          SizedBox(
            height: 10,
          ),
          GoToScreenButton(
              doorRoute: RouteManager.giveUpOnLifeBob,
              doorText: 'Give up on life'),
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
            StandYourGround(),
            SizedBox(
              height: 10,
            ),
            GoToScreenButton(
                doorRoute: RouteManager.runAwayFromBob,
                doorText: 'Run away from Bob'),
            SizedBox(
              height: 10,
            ),
            GoToScreenButton(
                doorRoute: RouteManager.giveUpOnLifeBob,
                doorText: 'Give up on life'),
          ],
        ),
      );
    }

    return ScreenBase(mainContent: mainContent, locationName: 'Bob');
  }
}
