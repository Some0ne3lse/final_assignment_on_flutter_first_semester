import 'package:final_assignment_on_flutter/buttons/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/buttons/try_item.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
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
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/happy_dog.png',
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
              dogDescription(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TryItem(
              itemDescription:
                  'The dog accepts your petting, but it doesn\'t trust you completely.',
              interactWithItem: 'Pet the dog'),
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
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/happy_dog.png',
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
                dogDescription(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TryItem(
                itemDescription:
                    'The dog accepts your petting, but it doesn\'t trust you completely.',
                interactWithItem: 'Pet the dog'),
            ElevatedButton(
              onPressed: () {
                dogSleeping = true;
                pickedUpItems.removeWhere((pickedUpItems) =>
                    pickedUpItems.title == 'Spiked Doughnut');
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: const Text(
                        'The dog eats the doughnut happily. After a few minutes it falls asleep'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              RouteManager.garden,
                              (Route<dynamic> route) => false);
                        },
                        child: const Text('Okay!'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Give the dog the spiked doughnut'),
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
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/sleeping_dog.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 300,
              child: Text(
                'The dog is sleeping',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      );
    }
    return ScreenBase(mainContent: mainContent, locationName: 'Dog');
  }
}
