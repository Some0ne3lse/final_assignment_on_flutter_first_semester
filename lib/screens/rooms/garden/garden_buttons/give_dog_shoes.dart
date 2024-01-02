import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/hall/hall.dart';
import 'package:flutter/material.dart';

class GiveDogShoes extends StatelessWidget {
  const GiveDogShoes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        dogTamed = true;
        pickedUpItems
            .removeWhere((pickedUpItems) => pickedUpItems.title == 'Shoes');
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: const Text(
                'The dog catches the shoes in the air. In a heartbeat, it seems to like you. It wags it\'s tail happily.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      RouteManager.garden, (Route<dynamic> route) => false);
                },
                child: const Text('Okay!'),
              ),
            ],
          ),
        );
      },
      child: const Text('Throw the shoes towards the dog'),
    );
  }
}
