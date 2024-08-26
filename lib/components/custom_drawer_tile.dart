import 'package:flutter/material.dart';

/*
Drawer tile 


simple tile for each item in the drawer tile

To use the widget you need: 
title (eg Home)
icon
function
*/

class CustomDrawerTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onTap;

  const CustomDrawerTile({super.key, required this.title, required this.icon, this.onTap});

  @override 
  Widget build(BuildContext context) {
  final colorScheme = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(title, style: TextStyle(
        color: colorScheme.inversePrimary
      ),),
      leading: Icon(icon, color: colorScheme.primary,),
      onTap: onTap,
    );
  }
}
