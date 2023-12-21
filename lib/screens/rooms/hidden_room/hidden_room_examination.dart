import 'package:final_assignment_on_flutter/buttons/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/examine_room_blueprints/nothing_of_interest.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

class HiddenRoomExamination extends StatelessWidget {
  const HiddenRoomExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/golden_key.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Text(
              style: const TextStyle(color: Colors.white, fontSize: 15),
              hiddenRoomExamination(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              pickedUpItems.add(
                Item(
                  title: 'Golden Key',
                  description: 'It is heavy but beautiful.',
                ),
              );
              Navigator.pop(context);
            },
            child: const Text('Take the Golden Key'),
          ),
          GoBackFromItem(
              routeManagerLocation: RouteManager.hiddenRoom,
              leaveItemText: 'Leave the Golden Key'),
        ],
      ),
    );
    String itemToCheck = 'Golden Key';
    if (pickedUpItems.any((item) => item.title == itemToCheck)) {
      mainContent = NothingOfInterest();
    }

    return ScreenBase(mainContent: mainContent, locationName: 'Hidden Room');
  }
}
