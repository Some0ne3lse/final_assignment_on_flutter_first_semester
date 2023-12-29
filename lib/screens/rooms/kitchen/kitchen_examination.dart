import 'package:final_assignment_on_flutter/buttons/combine_items.dart';
import 'package:final_assignment_on_flutter/buttons/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/buttons/try_item.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/examine_room_blueprints/one_item_examination.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/screen_base.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

class KitchenExamination extends StatelessWidget {
  const KitchenExamination({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mainContent = OneItemExamination(
        image: 'assets/images/doughnuts.png',
        examinationText: kitchenExamination(),
        itemDescription:
            'You eat a doughnut. It tastes nice, but not as nice as your cake.',
        interactWithItem: 'Eat a doughnut',
        routeManagerLocation: RouteManager.kitchen,
        leaveItemText: 'Leave the doughnuts');

    String itemToCheck = 'Sleeping-Pills';
    if (pickedUpItems.any((item) => item.title == itemToCheck)) {
      mainContent = Center(
        child: Column(
          children: [
            ImageAndText(
              image: 'assets/images/doughnuts.png',
              text: kitchenExamination(),
            ),
            // Image.asset('assets/images/doughnuts.png', width: 200),
            // const SizedBox(
            //   height: 20,
            // ),
            // SizedBox(
            //   width: 300,
            //   child: Text(
            //     style: const TextStyle(
            //       color: Colors.white,
            //       fontSize: 15,
            //     ),
            //     kitchenExamination(),
            //   ),
            // ),
            const SizedBox(
              height: 50,
            ),
            TryItem(
                itemDescription:
                    'You eat a doughnut. It tastes nice, but not as nice as your cake.',
                interactWithItem: 'Eat a doughnut'),
            CombineItems(
                itemToTake: 'Spiked Doughnut',
                itemToTakeDescription:
                    'You have spiked this doughnut with sleeping pills. I know it\'s difficult, but you should not eat this',
                itemToAdd: 'Sleeping-Pills',
                combineActionDescription:
                    'You insert a few pills into one of the doughnuts, and add it to your inventory.',
                combineSelectAction: 'Insert pills into doughnut',
                routeManagerLocation: RouteManager.kitchen),
            GoBackFromItem(
                routeManagerLocation: RouteManager.kitchen,
                leaveItemText: 'Leave the doughnuts'),
          ],
        ),
      );
    }

    return ScreenBase(mainContent: mainContent, locationName: 'Kitchen');
  }
}
