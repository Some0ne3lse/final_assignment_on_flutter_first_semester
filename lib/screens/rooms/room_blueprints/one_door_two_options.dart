import 'package:final_assignment_on_flutter/buttons/exit_button.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:flutter/material.dart';

class OneDoorTwoOptions extends StatelessWidget {
  const OneDoorTwoOptions({
    super.key,
    required this.title,
    required this.imgPath,
    required this.description,
    required this.optionOneText,
    required this.optionOneAction,
    required this.optionTwoText,
    required this.optionTwoAction,
    required this.firstDoorText,
    required this.firstDoorAction,
  });

  final String title;
  final String imgPath;
  final String description;
  final String optionOneText;
  final String optionOneAction;
  final String optionTwoText;
  final String optionTwoAction;
  final String firstDoorText;
  final String firstDoorAction;

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
                      Navigator.of(context).pushNamed(optionOneAction);
                    },
                    child: Text(optionOneText),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(optionTwoAction);
                    },
                    child: Text(optionTwoText),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          firstDoorAction, (Route<dynamic> route) => false);
                    },
                    child: Text(firstDoorText),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
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
                  Icon(Icons.build),
                ],
              ),
            ),
            const ExitButton(),
          ],
        ),
      ),
    );
  }
}
