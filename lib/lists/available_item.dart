import 'package:flutter/material.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';

// I had some issues with doing a proper list, so I ended up using the list
// similar to the one we used in the expense tracker. It makes a card for each
// item, and gives it a title and description.

class AvailableItem extends StatelessWidget {
  const AvailableItem(this.item, {super.key});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.title),
            const SizedBox(
              height: 4,
            ),
            Text(item.description),
          ],
        ),
      ),
    );
  }
}
