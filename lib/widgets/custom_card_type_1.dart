import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.album_outlined, color: AppTheme.primary,),
            title: const Text('Soy un titulo'),
            subtitle: const Text('Esse irure mollit dolor amet excepteur aute deserunt incididunt duis.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (() {
                    
                  }),
                  style: TextButton.styleFrom(foregroundColor: AppTheme.primary),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: (() {
                    
                  }),
                  child: const Text('Ok'),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}