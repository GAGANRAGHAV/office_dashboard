import 'package:flutter/material.dart';
import '../screens/sidebar.dart';
import '../screens/home_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(flex: 2, child: Sidebar()), // Left Navigation
          Expanded(flex: 8, child: HomeScreen()), // Main Content
        ],
      ),
    );
  }
}
