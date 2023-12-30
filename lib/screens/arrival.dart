import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/text_files/arrival.dart';
import 'package:flutter/material.dart';

class Arrival extends StatelessWidget {
  const Arrival({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Arrival',
        ),
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
                    image: 'assets/images/arrival.png',
                    text: arrivalText(),
                  ),
                  // Image.asset(
                  //   'assets/images/arrival.png',
                  //   width: 200,
                  // ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // SizedBox(
                  //   width: 300,
                  //   child: Text(
                  //     arrivalText(),
                  //     style: const TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 15,
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(RouteManager.entrance);
                    },
                    child: const Text('Go inside'),
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
    );
  }
}
