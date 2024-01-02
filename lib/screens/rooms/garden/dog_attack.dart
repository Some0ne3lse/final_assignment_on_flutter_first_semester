import 'package:final_assignment_on_flutter/buttons_for_many_places/go_to_screen_button.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/garden/garden_buttons/give_dog_shoes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/drama_actions_text/attack_text.dart';
import 'package:flutter/material.dart';

class DogAttack extends StatelessWidget {
  const DogAttack({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          ImageAndText(
            image: 'assets/images/dog_attack.png',
            text: dogAttack(),
          ),
          const SizedBox(
            height: 50,
          ),
          GoToScreenButton(
              doorRoute: RouteManager.hall, doorText: 'Run back inside'),
          SizedBox(
            height: 10,
          ),
          GoToScreenButton(
              doorRoute: RouteManager.petDogEnding,
              doorText: 'Try to pet the dog'),
          SizedBox(
            height: 10,
          ),
          GoToScreenButton(
              doorRoute: RouteManager.giveUpOnLifeDogNoAxe,
              doorText: 'Give up on life'),
        ],
      ),
    );
    String itemOneToCheck = 'Shoes';
    String itemTwoToCheck = 'Axe';
    if ((pickedUpItems.any((item) => item.title == itemOneToCheck)) &&
        ((pickedUpItems.any((item) => item.title == itemTwoToCheck)))) {
      mainContent = Center(
        child: Column(
          children: [
            ImageAndText(
              image: 'assets/images/dog_attack.png',
              text: dogAttack(),
            ),
            const SizedBox(
              height: 50,
            ),
            GoToScreenButton(
                doorRoute: RouteManager.hall, doorText: 'Run back inside'),
            SizedBox(
              height: 10,
            ),
            GoToScreenButton(
                doorRoute: RouteManager.petDogEnding,
                doorText: 'Try to pet the dog'),
            SizedBox(
              height: 10,
            ),
            GoToScreenButton(
                doorRoute: RouteManager.monster,
                doorText: 'Try to kill the dog with axe'),
            SizedBox(
              height: 10,
            ),
            GiveDogShoes(),
            SizedBox(
              height: 10,
            ),
            GoToScreenButton(
                doorRoute: RouteManager.giveUpOnLifeDog,
                doorText: 'Give up on life'),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      );
    } else if (pickedUpItems.any((item) => item.title == itemOneToCheck)) {
      mainContent = Center(
        child: Column(
          children: [
            ImageAndText(
              image: 'assets/images/dog_attack.png',
              text: dogAttack(),
            ),
            const SizedBox(
              height: 50,
            ),
            GoToScreenButton(
                doorRoute: RouteManager.hall, doorText: 'Run back inside'),
            SizedBox(
              height: 10,
            ),
            GoToScreenButton(
                doorRoute: RouteManager.petDogEnding,
                doorText: 'Try to pet the dog'),
            SizedBox(
              height: 10,
            ),
            GiveDogShoes(),
            SizedBox(
              height: 10,
            ),
            GoToScreenButton(
                doorRoute: RouteManager.giveUpOnLifeDogNoAxe,
                doorText: 'Give up on life'),
          ],
        ),
      );
    } else if (pickedUpItems.any((item) => item.title == itemTwoToCheck)) {
      mainContent = Center(
        child: Column(
          children: [
            ImageAndText(
              image: 'assets/images/dog_attack.png',
              text: dogAttack(),
            ),
            const SizedBox(
              height: 50,
            ),
            GoToScreenButton(
                doorRoute: RouteManager.hall, doorText: 'Run back inside'),
            SizedBox(
              height: 10,
            ),
            GoToScreenButton(
                doorRoute: RouteManager.petDogEnding,
                doorText: 'Try to pet the dog'),
            SizedBox(
              height: 10,
            ),
            GoToScreenButton(
                doorRoute: RouteManager.monster,
                doorText: 'Try to kill the dog with axe'),
            SizedBox(
              height: 10,
            ),
            GoToScreenButton(
                doorRoute: RouteManager.giveUpOnLifeDog,
                doorText: 'Give up on life'),
          ],
        ),
      );
    }
    return ScreenBase(mainContent: mainContent, locationName: 'Dog attack');
  }
}
