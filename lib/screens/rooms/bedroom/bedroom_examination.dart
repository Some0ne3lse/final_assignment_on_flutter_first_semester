import 'package:final_assignment_on_flutter/buttons/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/buttons/try_item.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/examine_room_blueprints/nothing_of_interest.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

// Since pills get removed when adding them to the doughnuts, I added a bool
// here so they don't show up again after combining. Therefore I also couldn't
// add the OneItemToPickUp class here

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
          // Image.asset(
          //   'assets/images/sleeping_pills.png',
          //   width: 200,
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // SizedBox(
          //   width: 300,
          //   child: Text(
          //     style: const TextStyle(color: Colors.white, fontSize: 15),
          //     bedroomExamination(),
          //   ),
          // ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              pillsTaken = true;
              pickedUpItems.add(
                Item(
                  title: 'Sleeping-Pills',
                  description:
                      'The pill description reads as follows: Very strong sleeping pills. Works on both animals and humans.',
                ),
              );
              Navigator.pop(context);
            },
            child: const Text('Take the sleeping-pills'),
          ),
          TryItem(
              itemDescription:
                  'The pill description reads as follows: Very strong sleeping pills. Works on both animals and humans.',
              interactWithItem: 'Read the pill description'),
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
