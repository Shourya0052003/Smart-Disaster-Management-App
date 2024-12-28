import 'package:flutter/material.dart';
import '../services/location_service.dart';

class SOSScreen extends StatelessWidget {
  const SOSScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send SOS Alert'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final location = await LocationService.getCurrentLocation();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Location: ${location.latitude}, ${location.longitude}')),
            );
          },
          child: const Text('Send SOS'),
        ),
      ),
    );
  }
}
