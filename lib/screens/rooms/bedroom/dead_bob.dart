import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/main.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/storage/storage_examination.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

bool bookTaken = false;
bool handTaken = false;

class DeadBob extends StatelessWidget {
  const DeadBob({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent;
    if (bookTaken == false && handTaken == false && sawTaken == true) {
      mainContent = Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/bob_censored.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              bobKilled(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              handTaken = true;
              pickedUpItems.add(
                Item(
                    title: 'Hand',
                    description:
                        'It is Bob\'s right hand. You hope all of this is worth it...'),
              );
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: const Text(
                      'You take the saw and start cutting off Bob\'s hand. After a few minutes you\'re done.'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              RouteManager.bedroom,
                              (Route<dynamic> route) => false);
                        },
                        child: const Text('Okay!'))
                  ],
                ),
              );
            },
            child: const Text('Cut of Bob\'s hand'),
          ),
          ElevatedButton(
            onPressed: () {
              bookTaken = true;
              pickedUpItems.add(
                Item(
                  title: 'Book',
                  description: 'It\'s a book filled with recipes for cakes.',
                ),
              );
              Navigator.pop(context);
            },
            child: const Text('Take the book'),
          ),
        ],
      );
    } else if (bookTaken == true && handTaken == false && sawTaken == true) {
      mainContent = Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/bob_censored.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              bobKilled(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              handTaken = true;
              pickedUpItems.add(
                Item(
                    title: 'Hand',
                    description:
                        'It is Bob\'s right hand. You hope all of this is worth it...'),
              );
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: const Text(
                      'You take the saw and start cutting off Bob\'s hand. After a few minutes you\'re done.'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              RouteManager.bedroom,
                              (Route<dynamic> route) => false);
                        },
                        child: const Text('Okay!'))
                  ],
                ),
              );
            },
            child: const Text('Cut of Bob\'s hand'),
          ),
        ],
      );
    } else if (bookTaken == false && handTaken == true && sawTaken == true) {
      mainContent = Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/bob_censored.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              bobKilled(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              bookTaken = true;
              pickedUpItems.add(
                Item(
                  title: 'Book',
                  description: 'It\'s a book filled with recipes for cakes.',
                ),
              );
              Navigator.pop(context);
            },
            child: const Text('Take the book'),
          ),
        ],
      );
    } else if (bookTaken == false && handTaken == false && sawTaken == false) {
      mainContent = Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/bob_censored.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              bobKilled(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              bookTaken = true;
              pickedUpItems.add(
                Item(
                  title: 'Book',
                  description: 'It\'s a book filled with recipes for cakes.',
                ),
              );
              Navigator.pop(context);
            },
            child: const Text('Take the book'),
          ),
        ],
      );
    } else if (bookTaken == true && handTaken == false && sawTaken == false) {
      mainContent = const SizedBox(
        width: 300,
        child: Text(
          'You find nothing else of value... For now',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      );
    } else if (bookTaken == true && handTaken == true && sawTaken == true) {
      mainContent = const SizedBox(
        width: 300,
        child: Text(
          'You find nothing else of value',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      );
    } else {
      mainContent = const Text('error');
    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Bob'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: mainContent,
            ),
          ],
        ),
      ),
    );
  }
}
