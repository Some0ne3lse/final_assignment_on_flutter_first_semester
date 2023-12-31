import 'package:final_assignment_on_flutter/lists/available_item.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:flutter/material.dart';

class InventoryList extends StatelessWidget {
  const InventoryList({super.key, required this.inventory});

  final List<Item> inventory;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: inventory.length,
      itemBuilder: (ctx, index) => AvailableItem(
        inventory[index],
      ),
    );
  }
}
