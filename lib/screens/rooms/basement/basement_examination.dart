import 'package:final_assignment_on_flutter/buttons_for_many_places/go_to_screen_button.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/try_item.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/basement/basement_buttons/insert_book.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/examine_room_blueprints/nothing_of_interest.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

// This is the code for examining the basement. Since it has a bool, and because
// I couldn't figure out how to have a bool in a separate file, the code is a
// little raw.

bool hiddenDoorFound = false;

class BasementExamination extends StatelessWidget {
  const BasementExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          ImageAndText(
            image: 'assets/images/hidden_mechanism.png',
            text: basementExamination(),
          ),
          const SizedBox(
            height: 50,
          ),
          const TryItem(
              itemDescription:
                  'It looks like you need to insert something. But what?',
              interactWithItem: 'Look at the mechanism'),
          const SizedBox(
            height: 10,
          ),
          const GoToScreenButton(
              routeManagerLocation: RouteManager.basement,
              text: 'Leave the mechanism'),
        ],
      ),
    );
    String itemToCheck = 'Book';
    if (pickedUpItems.any((item) => item.title == itemToCheck)) {
      mainContent = Center(
        child: Column(
          children: [
            ImageAndText(
              image: 'assets/images/hidden_mechanism.png',
              text: basementExamination(),
            ),
            const SizedBox(
              height: 50,
            ),
            const InsertBook(),
            const SizedBox(
              height: 10,
            ),
            const TryItem(
                itemDescription:
                    'It looks like you need to insert something. But what?',
                interactWithItem: 'Look at the mechanism'),
            const SizedBox(
              height: 10,
            ),
            const GoToScreenButton(
                routeManagerLocation: RouteManager.basement,
                text: 'Leave the mechanism'),
          ],
        ),
      );
    } else if (hiddenDoorFound == true) {
      mainContent = const NothingOfInterest();
    }
    return ScreenBase(mainContent: mainContent, locationName: 'Basement');
  }
}
