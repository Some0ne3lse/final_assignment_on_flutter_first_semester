import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

bool pillsTaken = false;

class BedroomExamination extends StatelessWidget {
  const BedroomExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/sleeping_pills.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              style: const TextStyle(color: Colors.white, fontSize: 15),
              bedroomExamination(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              pickedUpItems.add(
                Item(
                  title: 'Sleeping-Pills',
                  description:
                      'The pill description reads as follows: Very strong sleeping pills. Works on both animals and humans.',
                ),
              );
              Navigator.pop(context);
            },
            child: const Text('Take the sleeping-pills'),
          ),
          ElevatedButton(
            onPressed: () {
              pillsTaken = true;
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: const Text(
                      'The pill description reads as follows: Very strong sleeping pills. Works on both animals and humans.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Okay!'),
                    ),
                  ],
                ),
              );
            },
            child: const Text('Read the pill description'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteManager.bedroom, (Route<dynamic> route) => false);
            },
            child: const Text('Leave the shoes'),
          ),
        ],
      ),
    );
    if (pillsTaken == true) {
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
        title: const Text('Bedroom'),
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
