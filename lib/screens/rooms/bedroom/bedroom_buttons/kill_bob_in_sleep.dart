import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/bedroom/bob_examination.dart';
import 'package:flutter/material.dart';

// This button is in a separate file, since there's a lot of code.

class KillBobInSleep extends StatelessWidget {
  const KillBobInSleep({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: const Text(
                'You lift your axe and swing it down on Bob. You kill him with one strike.'),
            actions: [
              TextButton(
                onPressed: () {
                  bobDead = true;
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      RouteManager.bedroom, (Route<dynamic> route) => false);
                },
                child: const Text('Okay!'),
              ),
            ],
          ),
        );
      },
      child: const Text('Kill Bob in his sleep'),
    );
  }
}
