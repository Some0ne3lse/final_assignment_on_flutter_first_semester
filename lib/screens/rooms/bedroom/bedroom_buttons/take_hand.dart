import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:flutter/material.dart';

// This button is in a separate file, since there's a lot of code

class TakeHand extends StatelessWidget {
  const TakeHand({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        pickedUpItems.add(
          Item(
              title: 'Hand',
              description:
                  'It is Bob\'s right hand. You hope all of this is worth it...'),
        );
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: const Text(
                'You take the saw and start cutting off Bob\'s hand. After a few minutes you\'re done.'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        RouteManager.bedroom, (Route<dynamic> route) => false);
                  },
                  child: const Text('Okay!'))
            ],
          ),
        );
      },
      child: const Text('Cut of Bob\'s hand'),
    );
  }
}
