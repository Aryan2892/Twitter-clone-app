import 'package:flutter/material.dart';

/*
BUtton

a Simple button
*/

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const CustomButton({super.key , required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    
  final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: colorScheme.secondary,
          borderRadius: BorderRadius.circular(12)
        ),

        child: Center(child: Text(text , style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),)),
      ),
    );
  }
}