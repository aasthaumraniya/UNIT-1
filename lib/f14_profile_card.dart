import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String role;
  final IconData avatarIcon;
  final VoidCallback onTap;

  const ProfileCard({
    super.key,
    required this.name,
    required this.role,
    required this.avatarIcon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(
          backgroundColor: Colors.indigo.shade100,
          child: Icon(avatarIcon, color: Colors.indigo),
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        subtitle: Text(role),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom Profile Cards')),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          children: [
            ProfileCard(
              name: 'Rahul Sharma',
              role: 'Lead Mobile Developer',
              avatarIcon: Icons.code,
              onTap: () => _showDetails(context, 'Rahul Sharma'),
            ),
            ProfileCard(
              name: 'Priya Patel',
              role: 'UI/UX Designer',
              avatarIcon: Icons.palette,
              onTap: () => _showDetails(context, 'Priya Patel'),
            ),
            ProfileCard(
              name: 'Aarav Mehta',
              role: 'Backend Architect',
              avatarIcon: Icons.storage,
              onTap: () => _showDetails(context, 'Aarav Mehta'),
            ),
          ],
        ),
      ),
    );
  }

  void _showDetails(BuildContext context, String name) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Clicked on $name\'s profile!')),
    );
  }
}
