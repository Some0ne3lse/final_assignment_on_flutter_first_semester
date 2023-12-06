import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/text_files/introduction.dart';
import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Text('Getting the cake back',
            style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  width: 300,
                  child: Text(
                    introductionText(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteManager.cryEnding);
                  },
                  child: const Text('Sit down and cry with your wife'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteManager.arrival);
                  },
                  child: const Text('Go to Bob the Burly mans home'),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: kBottomNavigationBarHeight,
        color: Colors.black,
        child: Row(
          children: [
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: () {},
              child: const Row(
                children: [
                  Text('Inventory'),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.build)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
