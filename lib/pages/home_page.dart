import 'package:flutter/material.dart';
import 'package:twitter_clone/components/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.surface,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text("H O M E "),
        foregroundColor: colorScheme.primary,
      ),
    );
  }
}