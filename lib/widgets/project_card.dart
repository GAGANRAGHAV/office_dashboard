import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "🔥 Active Projects",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          ProjectTile(title: "Ethereum 2.0", progress: 75),
          ProjectTile(title: "Crypto App", progress: 40),
          ProjectTile(title: "AI Trading Bot", progress: 60),
        ],
      ),
    );
  }
}

class ProjectTile extends StatelessWidget {
  final String title;
  final double progress;

  const ProjectTile({super.key, required this.title, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(Icons.work, color: Colors.white70),
            const SizedBox(width: 10),
            Text(title, style: const TextStyle(color: Colors.white)),
            const Spacer(),
            Text("${progress.toInt()}%", style: const TextStyle(color: Colors.white70)),
          ],
        ),
        const SizedBox(height: 5),
        LinearProgressIndicator(
          value: progress / 100,
          backgroundColor: Colors.white24,
          color: Colors.blueAccent,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
