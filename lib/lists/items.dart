import 'package:final_assignment_on_flutter/lists/inventory_list.dart';
import 'package:flutter/material.dart';

class Item {
  Item({
    required this.title,
    required this.description,
  });
  final String title;
  final String description;
}

final List<Item> pickedUpItems = [Item(title: 'Book', description: 'Test')];

class Inventory extends StatefulWidget {
  const Inventory({super.key});

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text(
        'No items found...',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );

    if (pickedUpItems.isNotEmpty) {
      mainContent = InventoryList(inventory: pickedUpItems);
    }

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 69, 74, 73),
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: const Text('Inventory'),
        ),
        body: mainContent);
  }
}
