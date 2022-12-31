import 'package:flutter/material.dart';
import '../router/app_routes.dart';
import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter')
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile( 
            title: Text(AppRoutes.menuOptions[index].name),
            leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primary),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
            }
          );
        },
        separatorBuilder: (BuildContext context, int index) =>  const Divider(),
        itemCount: AppRoutes.menuOptions.length, 
      ),
    );
  }
}
