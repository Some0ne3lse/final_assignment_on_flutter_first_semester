import 'package:final_assignment_on_flutter/buttons_for_many_places/go_to_screen_button.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/take_item.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/examine_room_blueprints/nothing_of_interest.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

// The storage has two items, and therefore three different versions depending
// on what you pick up first.

class StorageExamination extends StatelessWidget {
  const StorageExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          ImageAndText(
            image: 'assets/images/sawAndAxe.png',
            text: storageExaminationAll(),
          ),
          const SizedBox(
            height: 50,
          ),
          const TakeItem(
              item: 'Saw',
              itemDescription:
                  'The saw is sharp. You almost cut yourself on it.',
              takeAction: 'Take the saw'),
          const SizedBox(
            height: 10,
          ),
          const TakeItem(
              item: 'Axe',
              itemDescription: 'The axe is in fine condition.',
              takeAction: 'Take the axe'),
          const SizedBox(
            height: 10,
          ),
          const GoToScreenButton(
              routeManagerLocation: RouteManager.storage,
              text: 'Leave the axe and saw'),
        ],
      ),
    );
    String itemOneToCheck = 'Saw';
    String itemTwoToCheck = 'Axe';
    if ((pickedUpItems.any((item) => item.title == itemOneToCheck)) &&
        ((pickedUpItems.any((item) => item.title == itemTwoToCheck)))) {
      mainContent = const NothingOfInterest();
    } else if (pickedUpItems.any((item) => item.title == itemOneToCheck)) {
      mainContent = Center(
        child: Column(
          children: [
            ImageAndText(
              image: 'assets/images/axe.png',
              text: storageExaminationAxe(),
            ),
            const SizedBox(
              height: 50,
            ),
            const TakeItem(
                item: 'Axe',
                itemDescription: 'The axe is in fine condition.',
                takeAction: 'Take the axe'),
            const SizedBox(
              height: 10,
            ),
            const GoToScreenButton(
                routeManagerLocation: RouteManager.storage,
                text: 'Leave the axe'),
          ],
        ),
      );
    } else if (pickedUpItems.any((item) => item.title == itemTwoToCheck)) {
      mainContent = Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ImageAndText(
              image: 'assets/images/saw.png',
              text: storageExaminationSaw(),
            ),
            const SizedBox(
              height: 50,
            ),
            const TakeItem(
                item: 'Saw',
                itemDescription:
                    'The saw is sharp. You almost cut yourself on it.',
                takeAction: 'Take the saw'),
            const SizedBox(
              height: 10,
            ),
            const GoToScreenButton(
                routeManagerLocation: RouteManager.storage,
                text: 'Leave the saw'),
          ],
        ),
      );
    }
    return ScreenBase(mainContent: mainContent, locationName: 'Storage');
  }
}
