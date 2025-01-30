import 'package:flutter/material.dart';

class TopCreators extends StatelessWidget {
  const TopCreators({super.key});

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
          const Text(
            "🏆 Top Creators",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          CreatorTile(name: "Pooja Mishra", score: 90, avatar: "assets/user1.jpg"),
          CreatorTile(name: "Amit Kumar", score: 85, avatar: "assets/user2.jpg"),
          CreatorTile(name: "Sonia Verma", score: 80, avatar: "assets/user3.jpg"),
        ],
      ),
    );
  }
}

class CreatorTile extends StatelessWidget {
  final String name;
  final int score;
  final String avatar;

  const CreatorTile({super.key, required this.name, required this.score, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 20, backgroundImage: AssetImage(avatar)),
        const SizedBox(width: 10),
        Text(name, style: const TextStyle(color: Colors.white)),
        const Spacer(),
        Text("$score XP", style: const TextStyle(color: Colors.white70)),
      ],
    );
  }
}
