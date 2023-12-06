import 'package:final_assignment_on_flutter/text_files/arrival.dart';
import 'package:flutter/material.dart';

class Arrival extends StatefulWidget {
  const Arrival({super.key});

  @override
  State<Arrival> createState() => _ArrivalState();
}

class _ArrivalState extends State<Arrival> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 74, 73),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Text('Arrival', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  width: 300,
                  child: Text(
                    arrivalText(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Go inside'),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: kBottomNavigationBarHeight,
        color: Colors.black,
        child: Row(
          children: [
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: () {},
              child: const Row(
                children: [
                  Text('Inventory'),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.build)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
