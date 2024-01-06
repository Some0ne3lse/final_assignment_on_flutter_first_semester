import 'package:final_assignment_on_flutter/buttons_for_many_places/go_to_screen_button.dart';
import 'package:final_assignment_on_flutter/buttons_for_many_places/try_item.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/entrance/entrance_buttons/take_shoes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/examine_room_blueprints/nothing_of_interest.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

// I originally had this in the OneItemToPickUp class, but I had issues with
// the boolean, so therefore the code isn't as elegant

bool shoesTaken = false;

class EntranceExamination extends StatelessWidget {
  const EntranceExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          ImageAndText(
            image: 'assets/images/shoes.png',
            text: entranceExamination(),
          ),
          const SizedBox(
            height: 50,
          ),
          const TakeShoes(),
          const SizedBox(
            height: 10,
          ),
          const TryItem(
              itemDescription:
                  'The shoes are too big for you. They have chewing marks on them.',
              interactWithItem: 'Try the shoes on'),
          const SizedBox(
            height: 10,
          ),
          const GoToScreenButton(
              routeManagerLocation: RouteManager.entrance,
              text: 'Leave the shoes'),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
    if (shoesTaken == true) {
      mainContent = const NothingOfInterest();
    }

    return ScreenBase(
      mainContent: mainContent,
      locationName: 'Entrance',
    );
  }
}
