import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final TextInputType? keyboardType;
  final IconData? suffixIcon;
  final bool obscuredText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key, this.hintText, this.labelText, this.helperText, this.suffixIcon, this.keyboardType, 
    this.obscuredText = false, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autofocus: true,
      initialValue: '',
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: obscuredText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == '') {
          return 'Este campo es requerido';
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? const Icon(Icons.person): Icon(suffixIcon),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10), 
            topLeft: Radius.circular(10))
        ),
      )
    );
  }
}