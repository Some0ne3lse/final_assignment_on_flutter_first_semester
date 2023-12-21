import 'package:final_assignment_on_flutter/buttons/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/buttons/tryItem.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

class KitchenExamination extends StatelessWidget {
  const KitchenExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/doughnuts.png',
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
              kitchenExamination(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TryItem(
              itemDescription:
                  'You eat a doughnut. It tastes nice, but not as nice as your cake.',
              interactWithItem: 'Eat a doughnut'),
          GoBackFromItem(
              routeManagerLocation: RouteManager.kitchen,
              leaveItemText: 'Leave the doughnuts')
        ],
      ),
    );

    String itemToCheck = 'Sleeping-Pills';
    if (pickedUpItems.any((item) => item.title == itemToCheck)) {
      mainContent = Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset('assets/images/doughnuts.png', width: 200),
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
                kitchenExamination(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TryItem(
                itemDescription:
                    'You eat a doughnut. It tastes nice, but not as nice as your cake.',
                interactWithItem: 'Eat a doughnut'),
            ElevatedButton(
              onPressed: () {
                pickedUpItems.add(
                  Item(
                      title: 'Spiked Doughnut',
                      description:
                          'You have spiked this doughnut with sleeping pills. I know it\'s difficult, but you should not eat this'),
                );
                pickedUpItems.removeWhere(
                    (pickedUpItems) => pickedUpItems.title == 'Sleeping-Pills');
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: const Text(
                        'You insert a few pills into one of the doughnuts, and add it to your inventory.'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                RouteManager.kitchen,
                                (Route<dynamic> route) => false);
                          },
                          child: const Text('Okay!'))
                    ],
                  ),
                );
              },
              child: const Text('Insert pills into doughnut'),
            ),
            GoBackFromItem(
                routeManagerLocation: RouteManager.kitchen,
                leaveItemText: 'Leave the doughnuts'),
          ],
        ),
      );
    }

    return ScreenBase(mainContent: mainContent, locationName: 'Kitchen');
  }
}
