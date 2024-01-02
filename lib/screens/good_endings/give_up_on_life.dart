import 'package:final_assignment_on_flutter/buttons_for_many_places/try_again_button.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/text_files/endings/good_endings.dart';
import 'package:flutter/material.dart';

class GiveUpOnLife extends StatelessWidget {
  const GiveUpOnLife({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Goodnight sweet prince'),
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
                    image: 'assets/images/heaven.png',
                    text: giveUpOnLife(),
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
