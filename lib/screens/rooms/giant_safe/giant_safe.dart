import 'package:final_assignment_on_flutter/buttons/exit_button.dart';
import 'package:final_assignment_on_flutter/lists/items.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/image_and_text.dart';
import 'package:final_assignment_on_flutter/screens/rooms/room_blueprints/one_door_one_option.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_description.dart';
import 'package:flutter/material.dart';

class GiantSafe extends StatelessWidget {
  const GiantSafe({super.key});

  @override
  Widget build(BuildContext context) {
    String itemOneToCheck = 'Hand';
    String itemTwoToCheck = 'Golden Key';
    if ((pickedUpItems.any((item) => item.title == itemOneToCheck)) &&
        (pickedUpItems.any((item) => item.title == itemTwoToCheck))) {
      return OneDoorOneOption(
          locationName: 'Giant Safe',
          imgPath: 'assets/images/terminal.png',
          description: giantSafe(),
          optionText: 'Insert Key and Hand print',
          optionRoute: RouteManager.passwordTerminal,
          firstDoorText: 'Go to the Living Room',
          firstDoorRoute: RouteManager.livingRoom);
    } else if (pickedUpItems.any((item) => item.title == itemOneToCheck)) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 69, 74, 73),
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: const Text('Giant Safe'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    ImageAndText(
                      image: 'assets/images/terminal.png',
                      text: giantSafe(),
                    ),
                    // Image.asset(
                    //   'assets/images/terminal.png',
                    //   width: 200,
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // SizedBox(
                    //   width: 300,
                    //   child: Text(
                    //     giantSafe(),
                    //     style: const TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 15,
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: const Text(
                                'You insert the hand, but nothing happens.'),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Okay!'))
                            ],
                          ),
                        );
                      },
                      child: const Text('Insert hand'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            RouteManager.livingRoom,
                            (Route<dynamic> route) => false);
                      },
                      child: const Text('Go to the Living Room'),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: kBottomNavigationBarHeight,
          color: Colors.black,
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
              const ExitButton(),
            ],
          ),
        ),
      );
    } else if (pickedUpItems.any((item) => item.title == itemTwoToCheck)) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 69, 74, 73),
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: const Text('Giant Safe'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    ImageAndText(
                      image: 'assets/images/terminal.png',
                      text: giantSafe(),
                    ),
                    // Image.asset(
                    //   'assets/images/terminal.png',
                    //   width: 200,
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // SizedBox(
                    //   width: 300,
                    //   child: Text(
                    //     giantSafe(),
                    //     style: const TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 15,
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: const Text(
                                'You insert the key, but nothing happens.'),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Okay!'))
                            ],
                          ),
                        );
                      },
                      child: const Text('Insert key'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            RouteManager.livingRoom,
                            (Route<dynamic> route) => false);
                      },
                      child: const Text('Go to the Living Room'),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: kBottomNavigationBarHeight,
          color: Colors.black,
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
              const ExitButton(),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 69, 74, 73),
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: const Text('Giant Safe'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    ImageAndText(
                      image: 'assets/images/terminal.png',
                      text: giantSafe(),
                    ),
                    // Image.asset(
                    //   'assets/images/terminal.png',
                    //   width: 200,
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // SizedBox(
                    //   width: 300,
                    //   child: Text(
                    //     giantSafe(),
                    //     style: const TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 15,
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            RouteManager.livingRoom,
                            (Route<dynamic> route) => false);
                      },
                      child: const Text('Go to the Living Room'),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: kBottomNavigationBarHeight,
          color: Colors.black,
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
              const ExitButton(),
            ],
          ),
        ),
      );
    }
  }
}
