import 'package:final_assignment_on_flutter/buttons/try_again_button.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/text_files/endings/good_endings.dart';
import 'package:flutter/material.dart';

class GiveUpOnLife extends StatelessWidget {
  const GiveUpOnLife({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
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
                  // Image.asset(
                  //   'assets/images/heaven.png',
                  //   width: 200,
                  // ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // SizedBox(
                  //   width: 300,
                  //   child: Text(
                  //     giveUpOnLife(),
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
