import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:flutter/material.dart';

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

    if (items.isNotEmpty) {
      mainContent = ListView.builder(
        itemBuilder: (context, index) {
          return Text(
            style: TextStyle(color: Colors.white, fontSize: 15),
            items[index],
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Inventory'),
      ),
      body: Column(
        children: [
          SizedBox(width: 300, height: 400, child: mainContent),
        ],
      ),
    );
  }
}
