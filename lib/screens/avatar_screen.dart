import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.orange[900],
              child: const Text('SL'),
            ),
          )
        ],
      ),
      body: Center(
         child: CircleAvatar(
          backgroundColor: AppTheme.primary,
          maxRadius: 110,
          backgroundImage: const NetworkImage('https://esports.as.com/2021/07/21/pokemon/Pokemon-jugables-personajes-Unite-roles_1484861583_724226_1024x1024.png'),
         ),
      ),
    );
  }
}