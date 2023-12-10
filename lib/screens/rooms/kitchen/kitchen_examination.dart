import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

class KitchenExamination extends StatelessWidget {
  const KitchenExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset('assets/images/doughnuts.png', width: 200),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              kitchenExamination(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: const Text(
                      'You eat a doughnut. It tastes nice, but not as nice as your cake.'),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Okay!'))
                  ],
                ),
              );
            },
            child: const Text('Eat a doughnut'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.kitchen);
            },
            child: const Text('Leave the Doughnuts'),
          ),
        ],
      ),
    );

    String itemToCheck = 'Sleeping-Pills';
    if (pickedUpItems.any((item) => item.title == itemToCheck)) {
      mainContent = Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset('assets/images/doughnuts.png', width: 200),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Text(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                kitchenExamination(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: const Text(
                        'You eat a doughnut. It tastes nice, but not as nice as your cake.'),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Okay!'))
                    ],
                  ),
                );
              },
              child: const Text('Eat a doughnut'),
            ),
            if (pickedUpItems.any((item) => item.title == itemToCheck))
              ElevatedButton(
                onPressed: () {
                  pickedUpItems.add(
                    Item(
                        title: 'Spiked Doughnut',
                        description:
                            'You have spiked this doughnut with sleeping pills. I know it\'s difficult, but you should not eat this'),
                  );
                  pickedUpItems.removeWhere((pickedUpItems) =>
                      pickedUpItems.title == 'Sleeping-Pills');
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: const Text(
                          'You insert a few pills into one of the doughnuts, and add it to your inventory.'),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.of(context)
                                .pushNamed(RouteManager.kitchen),
                            child: const Text('Okay!'))
                      ],
                    ),
                  );
                },
                child: const Text('Insert pills into doughnut'),
              ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.kitchen);
              },
              child: const Text('Leave the Doughnuts'),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Entrance'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            mainContent,
          ],
        ),
      ),
    );
  }
}
