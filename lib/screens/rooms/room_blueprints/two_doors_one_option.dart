import 'package:final_assignment_on_flutter/buttons/exit_button.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:flutter/material.dart';

class TwoDoorsOneOption extends StatelessWidget {
  const TwoDoorsOneOption({
    super.key,
    required this.title,
    required this.imgPath,
    required this.description,
    required this.optionText,
    required this.optionAction,
    required this.firstDoorText,
    required this.firstDoorAction,
    required this.secondDoorText,
    required this.secondDoorAction,
  });

  final String title;
  final String imgPath;
  final String description;
  final String optionText;
  final String optionAction;
  final String firstDoorText;
  final String firstDoorAction;
  final String secondDoorText;
  final String secondDoorAction;

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
                    onPressed: () =>
                        Navigator.of(context).pushNamed(optionAction),
                    child: Text(optionText),
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
                  Icon(Icons.build)
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
