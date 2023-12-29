import 'package:final_assignment_on_flutter/buttons/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/examine_room_blueprints/nothing_of_interest.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/examine_room_blueprints/one_item_to_pick_up.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

class HiddenRoomExamination extends StatelessWidget {
  const HiddenRoomExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = OneItemToPickUp(
      image: 'assets/images/golden_key.png',
      examinationText: hiddenRoomExamination(),
      item: 'Golden Key',
      itemDescription: 'It is heavy but beautiful.',
      takeAction: 'Take the Golden Key',
      interactWithItem: 'Look at the key',
      leaveItemText: 'Leave the golden key',
      routeManagerLocation: RouteManager.hiddenRoom,
    );
    String itemToCheck = 'Golden Key';
    if (pickedUpItems.any((item) => item.title == itemToCheck)) {
      mainContent = NothingOfInterest();
    }

    return ScreenBase(mainContent: mainContent, locationName: 'Hidden Room');
  }
}
