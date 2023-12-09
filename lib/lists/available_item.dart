import 'package:flutter/material.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';

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
