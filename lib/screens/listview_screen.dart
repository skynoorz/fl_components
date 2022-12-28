import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});
  final options = const{'Megaman', 'Metal Gear', 'Valorant', 'Smash Bros'};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View 1')),
      body: ListView(
        children: [
          ... options.map((game) => ListTile(
            trailing: const Icon(Icons.arrow_forward_ios),
            title: Text(game),)).toList(),
        ],
      ),
    );
  }
}
