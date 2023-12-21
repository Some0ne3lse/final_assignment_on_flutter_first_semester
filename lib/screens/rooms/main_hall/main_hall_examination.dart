import 'package:final_assignment_on_flutter/buttons/go_back_from_item.dart';
import 'package:final_assignment_on_flutter/buttons/tryItem.dart';
import 'package:final_assignment_on_flutter/routes/routes.dart';
import 'package:final_assignment_on_flutter/text_files/notes/notes.dart';
import 'package:final_assignment_on_flutter/text_files/rooms/room_examination.dart';
import 'package:flutter/material.dart';

class MainHallExamination extends StatelessWidget {
  const MainHallExamination({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Main Hall'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/images/letter.png',
                    width: 200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                      mainHallExamination(),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TryItem(
                      itemDescription: letter(),
                      interactWithItem: 'Read the letter'),
                  GoBackFromItem(
                      routeManagerLocation: RouteManager.mainHall,
                      leaveItemText: 'Leave the letter'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
