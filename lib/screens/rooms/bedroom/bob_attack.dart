import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bob_examination.dart';
import 'package:final_assignment_on_flutter/text_files/drama_actions_text/attack_text.dart';
import 'package:flutter/material.dart';

class BobAttack extends StatelessWidget {
  const BobAttack({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/bob_awake.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              style: const TextStyle(color: Colors.white, fontSize: 15),
              bobAttack(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteManager.runAwayFromBob, (Route<dynamic> route) => false);
            },
            child: const Text('Run away from Bob'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteManager.giveUpOnLifeBob,
                  (Route<dynamic> route) => false);
            },
            child: const Text('Give up on life'),
          ),
        ],
      ),
    );
    String itemToCheck = 'Axe';
    if (pickedUpItems.any((item) => item.title == itemToCheck)) {
      mainContent = Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/bob_awake.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                style: const TextStyle(color: Colors.white, fontSize: 15),
                bobAttack(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: const Text(
                        'You prepare your axe. When Bob comes running towards you, you strike. You kill him with one strike.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          bobDead = true;
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              RouteManager.bedroom,
                              (Route<dynamic> route) => false);
                        },
                        child: const Text('Okay!'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Stand your ground. Prepare your axe'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.runAwayFromBob,
                    (Route<dynamic> route) => false);
              },
              child: const Text('Run away from Bob'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.giveUpOnLifeBob,
                    (Route<dynamic> route) => false);
              },
              child: const Text('Give up on life'),
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
        title: const Text('Bob attack!'),
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
