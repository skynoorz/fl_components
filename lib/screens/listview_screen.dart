import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});
  final options = const['Megaman', 'Metal Gear', 'Valorant', 'Smash Bros'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de juegos List 1')
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]), 
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: (() {
            final game = options[index];
          })),
        separatorBuilder: (context, index) => const Divider()
      ),
    );
  }
}
