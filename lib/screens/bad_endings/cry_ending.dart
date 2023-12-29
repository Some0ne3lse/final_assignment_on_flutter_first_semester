import 'package:final_assignment_on_flutter/buttons/try_again_button.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/text_files/endings/bad_endings.dart';
import 'package:flutter/material.dart';

class CryEnding extends StatelessWidget {
  const CryEnding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Buhuuu'),
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
                    image: 'assets/images/sitAndCry.png',
                    text: cryBaby(),
                  ),
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
