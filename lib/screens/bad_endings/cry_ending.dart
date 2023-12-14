import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/text_files/endings/bad_endings.dart';
import 'package:flutter/material.dart';

class CryEnding extends StatelessWidget {
  const CryEnding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                  Image.asset(
                    'assets/images/sitAndCry.png',
                    width: 200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      cryBaby(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          RouteManager.startScreen,
                          (Route<dynamic> route) => false);
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
