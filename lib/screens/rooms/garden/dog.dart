import 'package:final_assignment_on_flutter/buttons_for_many_places/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/try_item.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/garden/garden_buttons/drug_the_dog.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

bool dogSleeping = false;

class Dog extends StatelessWidget {
  const Dog({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          ImageAndText(
            image: 'assets/images/happy_dog.png',
            text: dogDescription(),
          ),
          const SizedBox(
            height: 50,
          ),
          TryItem(
              itemDescription:
                  'The dog accepts your petting, but it doesn\'t trust you completely.',
              interactWithItem: 'Pet the dog'),
          SizedBox(
            height: 10,
          ),
          GoBackFromItem(
              routeManagerLocation: RouteManager.garden,
              leaveItemText: 'Leave the dog'),
        ],
      ),
    );
    String itemToCheck = 'Spiked Doughnut';
    if ((pickedUpItems.any((item) => item.title == itemToCheck)) &&
        dogSleeping == false) {
      mainContent = Center(
        child: Column(
          children: [
            ImageAndText(
              image: 'assets/images/happy_dog.png',
              text: dogDescription(),
            ),
            const SizedBox(
              height: 50,
            ),
            TryItem(
                itemDescription:
                    'The dog accepts your petting, but it doesn\'t trust you completely.',
                interactWithItem: 'Pet the dog'),
            SizedBox(
              height: 10,
            ),
            DrugTheDog(),
            SizedBox(
              height: 10,
            ),
            GoBackFromItem(
                routeManagerLocation: RouteManager.garden,
                leaveItemText: 'Leave the dog'),
          ],
        ),
      );
    } else if (dogSleeping == true) {
      mainContent = Center(
        child: Column(
          children: [
            ImageAndText(
              image: 'assets/images/sleeping_dog.png',
              text: 'The dog is sleeping',
            ),
          ],
        ),
      );
    }
    return ScreenBase(mainContent: mainContent, locationName: 'Dog');
  }
}
