import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/garden/dog.dart';
import 'package:flutter/material.dart';

// This is a separate file, due to a lot of code

class DrugTheDog extends StatelessWidget {
  const DrugTheDog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        dogSleeping = true;
        pickedUpItems.removeWhere(
            (pickedUpItems) => pickedUpItems.title == 'Spiked Doughnut');
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: const Text(
                'The dog eats the doughnut happily. After a few minutes it falls asleep'),
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
      child: const Text('Give the dog the spiked doughnut'),
    );
  }
}
