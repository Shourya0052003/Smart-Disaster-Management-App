import 'package:flutter/material.dart';
import '../models/resource_model.dart';

class InfoCard extends StatelessWidget {
  final Resource resource;

  const InfoCard({Key? key, required this.resource}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 5.0,
      child: ListTile(
        title: Text(resource.name),
        subtitle: Text(resource.description),
      ),
    );
  }
}
