// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 8),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Izakira Haru",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "example.@gmail.com",
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  _buildProfileOption(
                    icon: Icons.edit,
                    label: "Edit Profile",
                    onTap: () {
                      // Action Edit Profile
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.lock,
                    label: "Change Password",
                    onTap: () {
                      // Action Change Password
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.settings,
                    label: "Settings",
                    onTap: () {
                      // Action Settings
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.notifications,
                    label: "Notifications",
                    onTap: () {
                      // Action Notifications
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.help_outline,
                    label: "Help & Support",
                    onTap: () {
                      // Action Help
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.logout,
                    label: "Log Out",
                    onTap: () {
                      Navigator.pushNamed(context, 'loginPage');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildProfileOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Color.fromARGB(255, 33, 150, 243),
        ),
        title: Text(
          label,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
        ),
        onTap: onTap,
      ),
    );
  }
}