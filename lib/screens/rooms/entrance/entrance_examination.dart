import 'package:final_assignment_on_flutter/buttons/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/buttons/tryItem.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/examine_room_blueprints/nothing_of_interest.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

bool shoesTaken = false;

class EntranceExamination extends StatelessWidget {
  const EntranceExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent;
    if (shoesTaken == false) {
      mainContent = Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/shoes.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                style: const TextStyle(color: Colors.white, fontSize: 15),
                entranceExamination(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                shoesTaken = true;
                pickedUpItems.add(
                  Item(
                    title: 'Shoes',
                    description:
                        'The shoes are too big for you. They have chewing marks on them.',
                  ),
                );
                Navigator.pop(context);
              },
              child: const Text('Take the shoes'),
            ),
            TryItem(
                itemDescription:
                    'The shoes are too big for you. They have chewing marks on them.',
                interactWithItem: 'Try the shoes on'),
            GoBackFromItem(
                routeManagerLocation: RouteManager.entrance,
                leaveItemText: 'Leave the shoes'),
          ],
        ),
      );
    } else {
      mainContent = NothingOfInterest();
    }

    return ScreenBase(mainContent: mainContent, locationName: 'Entrance');
  }
}
