import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                // autofocus: true,
                initialValue: '',
                textAlign: TextAlign.center,
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print('value: ${value}');
                },
                validator: (value) {
                  if (value == '') {
                    return 'Este campo es requerido';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre',
                  helperText: 'Sólo caracteres validos',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10), 
                      topLeft: Radius.circular(10))
                  ),
                )
              )
            ],
          ),),
      ),
    );
  }
}