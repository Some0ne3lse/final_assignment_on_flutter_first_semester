import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

bool sawTaken = false;

class StorageExamination extends StatelessWidget {
  const StorageExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/sawAndAxe.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              style: const TextStyle(color: Colors.white, fontSize: 15),
              storageExaminationAll(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              sawTaken = true;
              pickedUpItems.add(
                Item(
                  title: 'Saw',
                  description:
                      'The saw is sharp. You almost cut yourself on it.',
                ),
              );
              Navigator.pop(context);
            },
            child: const Text('Take the saw'),
          ),
          ElevatedButton(
            onPressed: () {
              pickedUpItems.add(
                Item(
                  title: 'Axe',
                  description: 'The axe is in fine condition.',
                ),
              );
              Navigator.pop(context);
            },
            child: const Text('Take the axe'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteManager.storage, (Route<dynamic> route) => false);
            },
            child: const Text('Leave the axe and saw'),
          ),
        ],
      ),
    );
    String itemOneToCheck = 'Saw';
    String itemTwoToCheck = 'Axe';
    if ((pickedUpItems.any((item) => item.title == itemOneToCheck)) &&
        ((pickedUpItems.any((item) => item.title == itemTwoToCheck)))) {
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
    } else if (pickedUpItems.any((item) => item.title == itemOneToCheck)) {
      mainContent = Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/axe.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                style: const TextStyle(color: Colors.white, fontSize: 15),
                storageExaminationAxe(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                pickedUpItems.add(
                  Item(
                    title: 'Axe',
                    description: 'The axe is in fine condition.',
                  ),
                );
                Navigator.pop(context);
              },
              child: const Text('Take the axe'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.storage, (Route<dynamic> route) => false);
              },
              child: const Text('Leave the axe'),
            ),
          ],
        ),
      );
    } else if (pickedUpItems.any((item) => item.title == itemTwoToCheck)) {
      mainContent = Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/saw.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                style: const TextStyle(color: Colors.white, fontSize: 15),
                storageExaminationSaw(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                sawTaken = true;
                pickedUpItems.add(
                  Item(
                    title: 'Saw',
                    description:
                        'The saw is sharp. You almost cut yourself on it.',
                  ),
                );
                Navigator.pop(context);
              },
              child: const Text('Take the saw'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.storage, (Route<dynamic> route) => false);
              },
              child: const Text('Leave the saw'),
            ),
          ],
        ),
      );
    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Storage'),
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
