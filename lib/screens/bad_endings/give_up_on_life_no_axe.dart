import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/hall/hall.dart';
import 'package:final_assignment_on_flutter/screens/rooms/basement/basement_examination.dart';
import 'package:final_assignment_on_flutter/text_files/endings/bad_endings.dart';
import 'package:flutter/material.dart';

class GiveUpOnLifeNoAxe extends StatelessWidget {
  const GiveUpOnLifeNoAxe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Goodnight'),
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
                    'assets/images/pet_dog_ending.png',
                    width: 200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      giveUpOnLifeNoAxe(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(RouteManager.startScreen);
                      pickedUpItems.clear();
                      hiddenDoorFound = false;
                    },
                    child: const Text('Try Again'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
