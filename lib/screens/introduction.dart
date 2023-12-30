import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/text_files/introduction.dart';
import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getting the cake back'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  width: 300,
                  child: Text(
                    introductionText(),
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
                    Navigator.of(context)
                        .pushReplacementNamed(RouteManager.cryEnding);
                  },
                  child: const Text('Sit down and cry with your wife'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(RouteManager.arrival);
                  },
                  child: const Text('Go to Bob the Burly mans home'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
