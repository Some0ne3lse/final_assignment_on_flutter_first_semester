import 'package:final_assignment_on_flutter/buttons/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/buttons/tryItem.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/examine_room_blueprints/nothing_of_interest.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

bool hiddenDoorFound = false;

class BasementExamination extends StatelessWidget {
  const BasementExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/hidden_mechanism.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              basementExamination(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TryItem(
              itemDescription:
                  'It looks like you need to insert something. But what?',
              interactWithItem: 'Look at the mechanism'),
          GoBackFromItem(
              routeManagerLocation: RouteManager.basement,
              leaveItemText: 'Leave the mechanism'),
        ],
      ),
    );
    String itemToCheck = 'Book';
    if (pickedUpItems.any((item) => item.title == itemToCheck)) {
      mainContent = Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/hidden_mechanism.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                basementExamination(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                hiddenDoorFound = true;
                pickedUpItems.removeWhere(
                    (pickedUpItems) => pickedUpItems.title == 'Book');
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: const Text('With a click a hidden door opens'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              RouteManager.basement,
                              (Route<dynamic> route) => false);
                        },
                        child: const Text('Okay!'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Insert the recipe book into the mechanism'),
            ),
            TryItem(
                itemDescription:
                    'It looks like you need to insert something. But what?',
                interactWithItem: 'Look at the mechanism'),
            GoBackFromItem(
                routeManagerLocation: RouteManager.basement,
                leaveItemText: 'Leave the mechanism'),
          ],
        ),
      );
    } else if (hiddenDoorFound == true) {
      mainContent = NothingOfInterest();
    }
    return ScreenBase(mainContent: mainContent, locationName: 'Basement');
  }
}
