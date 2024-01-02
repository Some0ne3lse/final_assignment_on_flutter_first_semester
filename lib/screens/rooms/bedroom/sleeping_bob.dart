import 'package:final_assignment_on_flutter/buttons_for_many_places/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/go_to_screen_button.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bedroom_buttons/kill_bob_in_sleep.dart';
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
          GoToScreenButton(
              doorRoute: RouteManager.bobAttack,
              doorText: 'Try to take the book under the pillow'),
          SizedBox(
            height: 10,
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
            KillBobInSleep(),
            SizedBox(
              height: 10,
            ),
            GoToScreenButton(
                doorRoute: RouteManager.bobAttack,
                doorText: 'Try to take the book under the pillow'),
            SizedBox(
              height: 10,
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
