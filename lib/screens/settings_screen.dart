import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;

  @override
  void initState() {
    super.initState();
    // Load the saved preferences, if any (you can use shared_preferences or other methods).
  }

  // Function to toggle notifications
  void _toggleNotifications(bool value) {
    setState(() {
      _notificationsEnabled = value;
    });
  }

  // Function to toggle dark mode
  void _toggleDarkMode(bool value) {
    setState(() {
      _darkModeEnabled = value;
    });
    // Implement dark mode change logic here
  }

  // Function to log out the user
  void _logout() async {
    await FirebaseAuth.instance.signOut();
    // Navigate to the login screen
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              title: const Text('Enable Notifications'),
              value: _notificationsEnabled,
              onChanged: _toggleNotifications,
            ),
            SwitchListTile(
              title: const Text('Enable Dark Mode'),
              value: _darkModeEnabled,
              onChanged: _toggleDarkMode,
            ),
            const Divider(),
            ElevatedButton(
              onPressed: _logout,
              child: const Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
