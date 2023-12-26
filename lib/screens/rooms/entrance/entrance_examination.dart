import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/examine_room_blueprints/nothing_of_interest.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/examine_room_blueprints/one_item.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

class EntranceExamination extends StatelessWidget {
  const EntranceExamination({super.key});

  @override
  Widget build(BuildContext context) {
    String itemToCheck = 'Shoes';
    Widget mainContent = OneItemExamination(
        image: 'assets/images/shoes.png',
        examinationText: entranceExamination(),
        item: 'Shoes',
        itemDescription:
            'The shoes are too big for you. They have chewing marks on them.',
        takeAction: 'Take the shoes',
        interactWithItem: 'Try the shoes on',
        leaveItemText: 'Leave the shoes',
        routeManagerLocation: RouteManager.entrance);
    if (pickedUpItems.any((item) => item.title == itemToCheck)) {
      mainContent = NothingOfInterest();
    }

    return ScreenBase(
      mainContent: mainContent,
      locationName: 'Entrance',
    );
  }
}
