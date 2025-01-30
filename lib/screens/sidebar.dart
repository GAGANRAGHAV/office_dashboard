import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/profile.jpg"),
          ),
          const SizedBox(height: 10),
          const Text("Pooja Mishra", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
          const Text("Admin", style: TextStyle(fontSize: 14, color: Colors.grey)),
          const SizedBox(height: 20),
          SidebarItem(title: "Home", icon: Icons.home),
          SidebarItem(title: "Employees", icon: Icons.people),
          SidebarItem(title: "Attendance", icon: Icons.access_time),
          SidebarItem(title: "Summary", icon: Icons.dashboard),
          SidebarItem(title: "Information", icon: Icons.info),
          const Spacer(),
          SidebarItem(title: "Settings", icon: Icons.settings),
          SidebarItem(title: "Logout", icon: Icons.logout),
        ],
      ),
    );
  }
}

class SidebarItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const SidebarItem({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 10),
          Text(title, style: const TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }
}
