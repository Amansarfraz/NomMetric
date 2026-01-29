import 'package:flutter/material.dart';

class ProfileScreenAmansarfraz extends StatelessWidget {
  const ProfileScreenAmansarfraz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(height: 24),

          // Avatar
          CircleAvatar(
            radius: 45,
            backgroundColor: Colors.indigo.shade100,
            child: const Icon(Icons.person, size: 50, color: Colors.indigo),
          ),

          const SizedBox(height: 12),

          // Name
          const Text(
            'John Doe',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 4),

          // Email
          Text(
            'johndoe@email.com',
            style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
          ),

          const SizedBox(height: 30),

          // Options
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: const [
                  ProfileOptionTile(icon: Icons.edit, title: 'Edit Profile'),
                  ProfileOptionTile(icon: Icons.settings, title: 'Settings'),
                  ProfileOptionTile(
                    icon: Icons.logout,
                    title: 'Logout',
                    iconColor: Colors.red,
                    textColor: Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Reusable Tile Widget
class ProfileOptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? iconColor;
  final Color? textColor;

  const ProfileOptionTile({
    super.key,
    required this.icon,
    required this.title,
    this.iconColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: iconColor ?? Colors.indigo),
        title: Text(
          title,
          style: TextStyle(
            color: textColor ?? Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}
