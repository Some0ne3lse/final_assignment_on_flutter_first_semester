import 'package:final_assignment_on_flutter/lists/inventory_list.dart';
import 'package:flutter/material.dart';

// I had some issues with doing a proper list, so I ended up using the list
// similar to the one we used in the expense tracker. It makes a card for each
// item, and gives it a title and description.

class Item {
  Item({
    required this.title,
    required this.description,
  });
  final String title;
  final String description;
}

final List<Item> pickedUpItems = [];

class Inventory extends StatefulWidget {
  const Inventory({super.key});

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    // If the list is empty it will return this message
    Widget mainContent = const Center(
      child: Text(
        'No items found...',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );

    // If list is not empty, it will show the list
    if (pickedUpItems.isNotEmpty) {
      mainContent = InventoryList(inventory: pickedUpItems);
    }

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 69, 74, 73),
        appBar: AppBar(
          title: const Text('Inventory'),
        ),
        body: mainContent);
  }
}
