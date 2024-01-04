import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:flutter/material.dart';

// This button is for combining sleeping pills and a doughnut
// It has a separate class, so you can reuse it if you want to combine other
// things in case you want to expand the game. This is possible since there is
// no boolean.

class CombineItems extends StatelessWidget {
  const CombineItems({
    super.key,
    required this.itemToTake,
    required this.itemToTakeDescription,
    required this.itemToAdd,
    required this.combineActionDescription,
    required this.combineSelectAction,
    required this.routeManagerLocation,
  });

  final String itemToTake;
  final String itemToTakeDescription;
  final String itemToAdd;
  final String combineActionDescription;
  final String combineSelectAction;
  final String routeManagerLocation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          pickedUpItems.add(
            Item(
              title: itemToTake,
              description: itemToTakeDescription,
            ),
          );
          pickedUpItems
              .removeWhere((pickedUpItems) => pickedUpItems.title == itemToAdd);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(combineActionDescription),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          routeManagerLocation,
                          (Route<dynamic> route) => false);
                    },
                    child: const Text('Okay!'))
              ],
            ),
          );
        },
        child: Text(combineSelectAction));
  }
}
