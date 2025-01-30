import 'package:flutter/material.dart';

class BirthdayWidget extends StatelessWidget {
  const BirthdayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("🎂 Today Birthday", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 10),
          Row(
            children: [
              CircleAvatar(radius: 20, backgroundImage: AssetImage("assets/user1.jpg")),
              const SizedBox(width: 10),
              const CircleAvatar(radius: 20, backgroundImage: AssetImage("assets/user2.jpg")),
            ],
          ),
          const SizedBox(height: 10),
          const Text("Total: 2", style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
