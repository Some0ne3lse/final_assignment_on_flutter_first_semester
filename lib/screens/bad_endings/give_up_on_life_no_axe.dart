import 'package:final_assignment_on_flutter/buttons/try_again_button.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
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
                  ImageAndText(
                    image: 'assets/images/pet_dog_ending.png',
                    text: giveUpOnLifeNoAxe(),
                  ),
                  // Image.asset(
                  //   'assets/images/pet_dog_ending.png',
                  //   width: 200,
                  // ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // SizedBox(
                  //   width: 300,
                  //   child: Text(
                  //     giveUpOnLifeNoAxe(),
                  //     style: const TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 15,
                  //     ),
                  //   ),
                  // ),
                  const TryAgainButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
