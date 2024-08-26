import 'package:flutter/material.dart';

/*
Settings Drawer tile 


simple tile for each item in the drawer tile

To use the widget you need: 
title (eg Home)
onchanged
value
*/

class CustomSettingsTile extends StatelessWidget {
  final String title;
  final Widget action;

  const CustomSettingsTile({
    super.key,
    required this.title,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    
  final colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(left: 25, right: 25, top: 10),
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

         Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
         action,
        ],
      ),
    );
  }
}
