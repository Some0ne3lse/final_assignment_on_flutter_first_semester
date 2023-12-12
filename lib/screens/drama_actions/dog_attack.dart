import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/hall/hall.dart';
import 'package:final_assignment_on_flutter/text_files/drama_actions_text/dog_attack.dart';
import 'package:flutter/material.dart';

class DogAttack extends StatelessWidget {
  const DogAttack({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/dog_attack.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              style: const TextStyle(color: Colors.white, fontSize: 15),
              dogAttack(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.hall);
            },
            child: const Text('Run back inside'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.petDogEnding);
            },
            child: const Text('Try to pet the dog'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.giveUpOnLifeNoAxe);
            },
            child: const Text('Give up on life'),
          ),
        ],
      ),
    );
    String itemOneToCheck = 'Shoes';
    String itemTwoToCheck = 'Axe';
    if ((pickedUpItems.any((item) => item.title == itemOneToCheck)) &&
        ((pickedUpItems.any((item) => item.title == itemTwoToCheck)))) {
      mainContent = Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/dog_attack.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                style: const TextStyle(color: Colors.white, fontSize: 15),
                dogAttack(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.hall);
              },
              child: const Text('Run back inside'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.petDogEnding);
              },
              child: const Text('Try to pet the dog'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.monster);
              },
              child: const Text('Try to kill the dog with axe'),
            ),
            ElevatedButton(
              onPressed: () {
                dogTamed = true;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: const Text(
                        'The dog catches the shoes in the air. In a heartbeat, it seems to like you. It wags it\'s tail happily.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(RouteManager.garden);
                        },
                        child: const Text('Okay!'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Throw the shoes towards the dog'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.giveUpOnLife);
              },
              child: const Text('Give up on life'),
            ),
          ],
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
              'assets/images/dog_attack.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                style: const TextStyle(color: Colors.white, fontSize: 15),
                dogAttack(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.hall);
              },
              child: const Text('Run back inside'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.petDogEnding);
              },
              child: const Text('Try to pet the dog'),
            ),
            ElevatedButton(
              onPressed: () {
                dogTamed = true;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: const Text(
                        'The dog catches the shoes in the air. In a heartbeat, it seems to like you. It wags it\'s tail happily.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(RouteManager.garden);
                        },
                        child: const Text('Okay!'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Throw the shoes towards the dog'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.giveUpOnLifeNoAxe);
              },
              child: const Text('Give up on life'),
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
              'assets/images/dog_attack.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                style: const TextStyle(color: Colors.white, fontSize: 15),
                dogAttack(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.hall);
              },
              child: const Text('Run back inside'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.petDogEnding);
              },
              child: const Text('Try to pet the dog'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.monster);
              },
              child: const Text('Try to kill the dog with axe'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.giveUpOnLife);
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
        title: const Text('Dog attack!'),
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
