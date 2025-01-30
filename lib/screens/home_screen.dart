import 'package:flutter/material.dart';
import '../widgets/project_card.dart';
import '../widgets/top_creators.dart';
import 'performance_chart.dart';
import 'birthday_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Top Banner
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.blueAccent],
              ),
            ),
            padding: const EdgeInsets.all(20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ETHEREUM 2.0", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                SizedBox(height: 5),
                Text("Top Rating Project", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                SizedBox(height: 5),
                Text("Trending project and high rating project created by team.", style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Project & Top Creators Section
          Row(
            children: [
              Expanded(flex: 5, child: ProjectCard()), // Left Side Projects
              const SizedBox(width: 20),
              Expanded(flex: 3, child: TopCreators()), // Right Side Creators
            ],
          ),

          const SizedBox(height: 20),

          // Performance Graph
          const PerformanceChart(),

          const SizedBox(height: 20),

          // Birthday & Anniversary Section
          const BirthdayWidget(),
        ],
      ),
    );
  }
}
