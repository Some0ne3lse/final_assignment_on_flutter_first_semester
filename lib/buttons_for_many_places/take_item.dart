import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:flutter/material.dart';

// This class is just for taking items that do not activate a boolean.

class TakeItem extends StatelessWidget {
  const TakeItem({
    super.key,
    required this.item,
    required this.itemDescription,
    required this.takeAction,
  });

  final String item;
  final String itemDescription;
  final String takeAction;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        pickedUpItems.add(
          Item(
            title: item,
            description: itemDescription,
          ),
        );
        Navigator.pop(context);
      },
      child: Text(takeAction),
    );
  }
}
