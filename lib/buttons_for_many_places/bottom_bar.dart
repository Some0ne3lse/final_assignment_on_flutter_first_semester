import 'package:final_assignment_on_flutter/buttons_for_many_places/restart_button.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:flutter/material.dart';

// This is the bar on the bottom on the screen in the rooms
// It can show you the inventory or you can restart the game

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: kBottomNavigationBarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.inventory);
            },
            child: const Row(
              children: [
                Text('Inventory'),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.build),
              ],
            ),
          ),
          const RestartButton(),
        ],
      ),
    );
  }
}
