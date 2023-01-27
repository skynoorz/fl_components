import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100.0;
  
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 800,
            divisions: 20,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnabled ? (value) {
              setState(() {
                _sliderValue = value;
              });
            } : null,
          ),
          // Checkbox(
          //   value: _sliderEnabled, 
          //   onChanged: (value) {
          //     _sliderEnabled = value ?? true;
          //     setState(() {});
          //   },
          // ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text("Habilitar Slider"),
            value: _sliderEnabled, 
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            },
          ),
          // Switch(
          //   activeColor: AppTheme.primary,
          //   value: _sliderEnabled, 
          //   onChanged: (value) {
          //     _sliderEnabled = value;
          //     setState(() {});
          //   },
          // ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text("Habilitar Slider"),
            value: _sliderEnabled, 
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://static.wikia.nocookie.net/wowpedia/images/b/b6/Thrall_WarCraft_Raneman.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
        ],
      )
    );
  }
}