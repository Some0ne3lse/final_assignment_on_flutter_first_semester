import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/hall/hall.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/drama_actions_text/attack_text.dart';
import 'package:flutter/material.dart';

class DogAttack extends StatelessWidget {
  const DogAttack({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          ImageAndText(
            image: 'assets/images/dog_attack.png',
            text: dogAttack(),
          ),
          // Image.asset(
          //   'assets/images/dog_attack.png',
          //   width: 200,
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // SizedBox(
          //   width: 300,
          //   child: Text(
          //     style: const TextStyle(color: Colors.white, fontSize: 15),
          //     dogAttack(),
          //   ),
          // ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteManager.hall, (Route<dynamic> route) => false);
            },
            child: const Text('Run back inside'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteManager.petDogEnding, (Route<dynamic> route) => false);
            },
            child: const Text('Try to pet the dog'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteManager.giveUpOnLifeNoAxe,
                  (Route<dynamic> route) => false);
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
            ImageAndText(
              image: 'assets/images/dog_attack.png',
              text: dogAttack(),
            ),
            // Image.asset(
            //   'assets/images/dog_attack.png',
            //   width: 200,
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            // SizedBox(
            //   width: 300,
            //   child: Text(
            //     style: const TextStyle(color: Colors.white, fontSize: 15),
            //     dogAttack(),
            //   ),
            // ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.hall, (Route<dynamic> route) => false);
              },
              child: const Text('Run back inside'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.petDogEnding, (Route<dynamic> route) => false);
              },
              child: const Text('Try to pet the dog'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.monster, (Route<dynamic> route) => false);
              },
              child: const Text('Try to kill the dog with axe'),
            ),
            ElevatedButton(
              onPressed: () {
                pickedUpItems.removeWhere(
                    (pickedUpItems) => pickedUpItems.title == 'Shoes');
                dogTamed = true;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: const Text(
                        'The dog catches the shoes in the air. In a heartbeat, it seems to like you. It wags it\'s tail happily.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              RouteManager.garden,
                              (Route<dynamic> route) => false);
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
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.giveUpOnLife, (Route<dynamic> route) => false);
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
            ImageAndText(
              image: 'assets/images/dog_attack.png',
              text: dogAttack(),
            ),
            // Image.asset(
            //   'assets/images/dog_attack.png',
            //   width: 200,
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            // SizedBox(
            //   width: 300,
            //   child: Text(
            //     style: const TextStyle(color: Colors.white, fontSize: 15),
            //     dogAttack(),
            //   ),
            // ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.hall, (Route<dynamic> route) => false);
              },
              child: const Text('Run back inside'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.petDogEnding, (Route<dynamic> route) => false);
              },
              child: const Text('Try to pet the dog'),
            ),
            ElevatedButton(
              onPressed: () {
                dogTamed = true;
                pickedUpItems.removeWhere(
                    (pickedUpItems) => pickedUpItems.title == 'Shoes');
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: const Text(
                        'The dog catches the shoes in the air. In a heartbeat, it seems to like you. It wags it\'s tail happily.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              RouteManager.garden,
                              (Route<dynamic> route) => false);
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
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.giveUpOnLifeNoAxe,
                    (Route<dynamic> route) => false);
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
            ImageAndText(
              image: 'assets/images/dog_attack.png',
              text: dogAttack(),
            ),
            // Image.asset(
            //   'assets/images/dog_attack.png',
            //   width: 200,
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            // SizedBox(
            //   width: 300,
            //   child: Text(
            //     style: const TextStyle(color: Colors.white, fontSize: 15),
            //     dogAttack(),
            //   ),
            // ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.hall, (Route<dynamic> route) => false);
              },
              child: const Text('Run back inside'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.petDogEnding, (Route<dynamic> route) => false);
              },
              child: const Text('Try to pet the dog'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.monster, (Route<dynamic> route) => false);
              },
              child: const Text('Try to kill the dog with axe'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RouteManager.giveUpOnLife, (Route<dynamic> route) => false);
              },
              child: const Text('Give up on life'),
            ),
          ],
        ),
      );
    }
    return ScreenBase(mainContent: mainContent, locationName: 'Dog attack');
  }
}
