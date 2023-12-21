import 'package:final_assignment_on_flutter/buttons/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/examine_room_blueprints/nothing_of_interest.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

bool sawTaken = false;

class StorageExamination extends StatelessWidget {
  const StorageExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/sawAndAxe.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              style: const TextStyle(color: Colors.white, fontSize: 15),
              storageExaminationAll(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              sawTaken = true;
              pickedUpItems.add(
                Item(
                  title: 'Saw',
                  description:
                      'The saw is sharp. You almost cut yourself on it.',
                ),
              );
              Navigator.pop(context);
            },
            child: const Text('Take the saw'),
          ),
          ElevatedButton(
            onPressed: () {
              pickedUpItems.add(
                Item(
                  title: 'Axe',
                  description: 'The axe is in fine condition.',
                ),
              );
              Navigator.pop(context);
            },
            child: const Text('Take the axe'),
          ),
          GoBackFromItem(
              routeManagerLocation: RouteManager.storage,
              leaveItemText: 'Leave the axe and saw'),
        ],
      ),
    );
    String itemOneToCheck = 'Saw';
    String itemTwoToCheck = 'Axe';
    if ((pickedUpItems.any((item) => item.title == itemOneToCheck)) &&
        ((pickedUpItems.any((item) => item.title == itemTwoToCheck)))) {
      mainContent = NothingOfInterest();
    } else if (pickedUpItems.any((item) => item.title == itemOneToCheck)) {
      mainContent = Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/axe.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                style: const TextStyle(color: Colors.white, fontSize: 15),
                storageExaminationAxe(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                pickedUpItems.add(
                  Item(
                    title: 'Axe',
                    description: 'The axe is in fine condition.',
                  ),
                );
                Navigator.pop(context);
              },
              child: const Text('Take the axe'),
            ),
            GoBackFromItem(
                routeManagerLocation: RouteManager.storage,
                leaveItemText: 'Leave the axe'),
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
            Image.asset(
              'assets/images/saw.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                style: const TextStyle(color: Colors.white, fontSize: 15),
                storageExaminationSaw(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                sawTaken = true;
                pickedUpItems.add(
                  Item(
                    title: 'Saw',
                    description:
                        'The saw is sharp. You almost cut yourself on it.',
                  ),
                );
                Navigator.pop(context);
              },
              child: const Text('Take the saw'),
            ),
            GoBackFromItem(
                routeManagerLocation: RouteManager.storage,
                leaveItemText: 'Leave the saw'),
          ],
        ),
      );
    }
    return ScreenBase(mainContent: mainContent, locationName: 'Storage');
  }
}
