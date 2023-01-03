import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;
   
  const CustomCardType2({super.key, required this.imageUrl, this.name});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      clipBehavior: Clip.antiAlias,
      shadowColor: AppTheme.primary.withOpacity(0.3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if(null != name)
            Container(
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              alignment: AlignmentDirectional.centerEnd,
              child: Text(name ?? 'No Title'),
            )
        ]
      ),);
  }
}