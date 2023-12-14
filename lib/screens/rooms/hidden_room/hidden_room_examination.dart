import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

class HiddenRoomExamination extends StatelessWidget {
  const HiddenRoomExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/golden_key.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              style: const TextStyle(color: Colors.white, fontSize: 15),
              hiddenRoomExamination(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              pickedUpItems.add(
                Item(
                  title: 'Golden Key',
                  description: 'It is heavy but beautiful.',
                ),
              );
              Navigator.pop(context);
            },
            child: const Text('Take the Golden Key'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteManager.hiddenRoom, (Route<dynamic> route) => false);
            },
            child: const Text('Leave the Golden Key'),
          ),
        ],
      ),
    );
    String itemToCheck = 'Golden Key';
    if (pickedUpItems.any((item) => item.title == itemToCheck)) {
      mainContent = const Center(
        child: SizedBox(
          width: 300,
          child: Text(
            'You find nothing else of value',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Hidden Room'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            mainContent,
          ],
        ),
      ),
    );
  }
}
