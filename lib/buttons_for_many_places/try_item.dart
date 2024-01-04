import 'package:flutter/material.dart';

// This button is just for examining items. I also use it to read notes.

class TryItem extends StatelessWidget {
  const TryItem({
    super.key,
    required this.itemDescription,
    required this.interactWithItem,
  });

  final String itemDescription;
  final String interactWithItem;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: Text(itemDescription),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Okay!'),
              ),
            ],
          ),
        );
      },
      child: Text(interactWithItem),
    );
  }
}
