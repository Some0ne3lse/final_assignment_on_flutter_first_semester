import 'package:final_assignment_on_flutter/buttons_for_many_places/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/try_item.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bedroom_buttons/take_pills.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/examine_room_blueprints/nothing_of_interest.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

// Since pills get removed when adding them to the doughnuts, I added a bool
// to the class TakePills so they don't show up again after combining with
// doughnuts. Therefore I also couldn't use the OneItemToPickUp class here

bool pillsTaken = false;

class BedroomExamination extends StatelessWidget {
  const BedroomExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          ImageAndText(
            image: 'assets/images/sleeping_pills.png',
            text: bedroomExamination(),
          ),
          const SizedBox(
            height: 50,
          ),
          TakePills(),
          SizedBox(
            height: 10,
          ),
          TryItem(
              itemDescription:
                  'The pill description reads as follows: Very strong sleeping pills. Works on both animals and humans.',
              interactWithItem: 'Read the pill description'),
          SizedBox(
            height: 10,
          ),
          GoBackFromItem(
              routeManagerLocation: RouteManager.bedroom,
              leaveItemText: 'Leave the pills'),
        ],
      ),
    );
    if (pillsTaken == true) {
      mainContent = NothingOfInterest();
    }

    return ScreenBase(mainContent: mainContent, locationName: 'Bedroom');
  }
}
