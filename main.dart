import 'package:flutter/material.dart';
import 'copilot_engine.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void handleIntent(BuildContext context, String intent) {
    String response = CopilotEngine.getResponse(intent);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(response)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            const Text(
              "ASSCAT",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),

            const SizedBox(height: 40),

            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.withOpacity(0.1),
                  ),
                ),
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.withOpacity(0.2),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: const Icon(
                    Icons.mic,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            const Text(
              "How can I help you today?",
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: [
                  customButton(context, "Check my clearance"),
                  customButton(context, "My schedule"),
                  customButton(context, "My grades"),
                ],
              ),
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Type or speak here...",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget customButton(BuildContext context, String text) {
    return OutlinedButton(
      onPressed: () => HomeScreen().handleIntent(context, text),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        side: const BorderSide(color: Colors.blue),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.blue),
      ),
    );
  }
}