import 'package:final_assignment_on_flutter/buttons_for_many_places/try_again_button.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/text_files/endings/bad_endings.dart';
import 'package:flutter/material.dart';

class GiveUpOnLifeDogNoAxe extends StatelessWidget {
  const GiveUpOnLifeDogNoAxe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  const TryAgainButton(),
                  SizedBox(
                    height: 30,
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
