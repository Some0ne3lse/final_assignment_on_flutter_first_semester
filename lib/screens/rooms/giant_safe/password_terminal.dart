import 'package:flutter/material.dart';

class PasswordTerminal extends StatefulWidget {
  const PasswordTerminal({super.key});

  @override
  State<PasswordTerminal> createState() => _PasswordTerminalState();
}

class _PasswordTerminalState extends State<PasswordTerminal> {
  TextEditingController passWordController = TextEditingController();

  @override
  void dispose() {
    passWordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 9, 45),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Input Password',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                controller: passWordController,
                textAlign: TextAlign.center,
                cursorColor: const Color.fromARGB(255, 0, 0, 255),
                style: const TextStyle(color: Colors.purple),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
