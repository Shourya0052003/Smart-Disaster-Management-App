import 'package:flutter/material.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disaster Resources'),
      ),
      body: Center(
        child: const Text('List of resources will be displayed here.'),
      ),
    );
  }
}
