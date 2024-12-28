import 'package:flutter/material.dart';
import 'sos_screen.dart';
import 'resources_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Disaster Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SOSScreen()),
                );
              },
              child: const Text('Send SOS'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ResourcesScreen()),
                );
              },
              child: const Text('Disaster Resources'),
            ),
          ],
        ),
      ),
    );
  }
}
