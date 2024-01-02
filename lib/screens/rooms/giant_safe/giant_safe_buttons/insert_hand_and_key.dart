import 'package:flutter/material.dart';

class InsertHand extends StatelessWidget {
  const InsertHand({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: const Text('You insert the hand, but nothing happens.'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Okay!'))
            ],
          ),
        );
      },
      child: const Text('Insert hand'),
    );
  }
}

class InsertKey extends StatelessWidget {
  const InsertKey({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: const Text('You insert the key, but nothing happens.'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Okay!'))
            ],
          ),
        );
      },
      child: const Text('Insert key'),
    );
  }
}
