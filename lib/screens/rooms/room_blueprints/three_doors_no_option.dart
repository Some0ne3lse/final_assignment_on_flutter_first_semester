import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/hall/hall.dart';
import 'package:final_assignment_on_flutter/screens/rooms/basement/basement_examination.dart';
import 'package:flutter/material.dart';

class ThreeDoorsNoOption extends StatelessWidget {
  const ThreeDoorsNoOption({
    super.key,
    required this.title,
    required this.imgPath,
    required this.description,
    required this.firstDoorText,
    required this.firstDoorAction,
    required this.secondDoorText,
    required this.secondDoorAction,
    required this.thirdDoorText,
    required this.thirdDoorAction,
  });

  final String title;
  final String imgPath;
  final String description;
  final String firstDoorText;
  final String firstDoorAction;
  final String secondDoorText;
  final String secondDoorAction;
  final String thirdDoorText;
  final String thirdDoorAction;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    imgPath,
                    width: 200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      description,
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
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          firstDoorAction, (Route<dynamic> route) => false);
                    },
                    child: Text(firstDoorText),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          secondDoorAction, (Route<dynamic> route) => false);
                    },
                    child: Text(secondDoorText),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          thirdDoorAction, (Route<dynamic> route) => false);
                    },
                    child: Text(thirdDoorText),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: kBottomNavigationBarHeight,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.inventory);
              },
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
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: const Text(
                        'Are you sure you want to Exit? All data will be cleared.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('NO!'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              RouteManager.startScreen,
                              (Route<dynamic> route) => false);
                          pickedUpItems.clear();
                          dogTamed = false;
                          hiddenDoorFound = false;
                        },
                        child: const Text('YES!'),
                      ),
                    ],
                  ),
                );
              },
              child: const Row(
                children: [
                  Text('Exit'),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.exit_to_app),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}