import 'package:final_assignment_on_flutter/buttons_for_many_places/go_to_screen_button.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/garden/garden_buttons/give_dog_shoes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/drama_actions_text/attack_text.dart';
import 'package:flutter/material.dart';

// Here we have a lot of code. This is because you have different options
// depending on the items you have. In this case, the shoes and the axe.
// Therefore we have 4 different screens. 1 with all, 2 with just 1 of the items
// and 1 without any items

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
          const GoToScreenButton(
              routeManagerLocation: RouteManager.hall, text: 'Run back inside'),
          const SizedBox(
            height: 10,
          ),
          const GoToScreenButton(
              routeManagerLocation: RouteManager.petDogEnding,
              text: 'Try to pet the dog'),
          const SizedBox(
            height: 10,
          ),
          const GoToScreenButton(
              routeManagerLocation: RouteManager.giveUpOnLifeDogNoAxe,
              text: 'Give up on life'),
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
            const GoToScreenButton(
                routeManagerLocation: RouteManager.hall,
                text: 'Run back inside'),
            const SizedBox(
              height: 10,
            ),
            const GoToScreenButton(
                routeManagerLocation: RouteManager.petDogEnding,
                text: 'Try to pet the dog'),
            const SizedBox(
              height: 10,
            ),
            const GoToScreenButton(
                routeManagerLocation: RouteManager.monster,
                text: 'Try to kill the dog with axe'),
            const SizedBox(
              height: 10,
            ),
            const GiveDogShoes(),
            const SizedBox(
              height: 10,
            ),
            const GoToScreenButton(
                routeManagerLocation: RouteManager.giveUpOnLifeDog,
                text: 'Give up on life'),
            const SizedBox(
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
            const GoToScreenButton(
                routeManagerLocation: RouteManager.hall,
                text: 'Run back inside'),
            const SizedBox(
              height: 10,
            ),
            const GoToScreenButton(
                routeManagerLocation: RouteManager.petDogEnding,
                text: 'Try to pet the dog'),
            const SizedBox(
              height: 10,
            ),
            const GiveDogShoes(),
            const SizedBox(
              height: 10,
            ),
            const GoToScreenButton(
                routeManagerLocation: RouteManager.giveUpOnLifeDogNoAxe,
                text: 'Give up on life'),
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
            const GoToScreenButton(
                routeManagerLocation: RouteManager.hall,
                text: 'Run back inside'),
            const SizedBox(
              height: 10,
            ),
            const GoToScreenButton(
                routeManagerLocation: RouteManager.petDogEnding,
                text: 'Try to pet the dog'),
            const SizedBox(
              height: 10,
            ),
            const GoToScreenButton(
                routeManagerLocation: RouteManager.monster,
                text: 'Try to kill the dog with axe'),
            const SizedBox(
              height: 10,
            ),
            const GoToScreenButton(
                routeManagerLocation: RouteManager.giveUpOnLifeDog,
                text: 'Give up on life'),
          ],
        ),
      );
    }
    return ScreenBase(mainContent: mainContent, locationName: 'Dog attack');
  }
}
