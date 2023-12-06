import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination/entrance_examination.dart';
import 'package:flutter/material.dart';

class EntranceExamination extends StatelessWidget {
  const EntranceExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          Text(
              style: TextStyle(color: Colors.white, fontSize: 15),
              entranceExamination()),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              items.add('shoes');
            },
            child: const Text('Take the shoes'),
          ),
          ElevatedButton(
            onPressed: () {
              SimpleDialog(
                title: const Text('The shoes are too big for you'),
                children: [
                  SimpleDialogOption(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Okay'),
                  ),
                ],
              );
            },
            child: const Text('Try the shoes on'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.entrance);
            },
            child: const Text('Leave the shoes'),
          ),
        ],
      ),
    );

    if (items.contains('shoes')) {
      mainContent = Text('There is nothing else of interest');
    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Entrance'),
      ),
      body: Column(
        children: [mainContent],
      ),
    );
  }
}
