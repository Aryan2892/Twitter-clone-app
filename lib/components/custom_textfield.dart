import 'package:flutter/material.dart';

/*
WIDGET FOR USER TO TYPE INTO

TO USE :
- TEXTCONTROLLER
- HINTTEXT
- OBSUCRE TEXT

*/

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.tertiary),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder:OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.primary),
          borderRadius: BorderRadius.circular(12),
          
        ),
        fillColor: colorScheme.secondary,
        filled: true, 
        hintText: hintText,
        hintStyle: TextStyle(color: colorScheme.primary),
        
      ),
    );
  }
}
