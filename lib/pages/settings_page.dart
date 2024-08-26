import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter_clone/components/custom_settings_tile.dart';
import 'package:twitter_clone/themes/theme_provider.dart';

/*
settings pafe
-dark mode
- blocked users
-account settings

*/

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: const Text("S E T T I N G S"),
        foregroundColor: colorScheme.primary,
      ),
      body: Column(
        children: [
          //Dark mode tile
          CustomSettingsTile(
            title: "Dark mode",
            action: CupertinoSwitch(
              onChanged: (value) =>
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme(),
              value:
                  Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
            ),
          )

          //Blocked users
          //Account settings
        ],
      ),
    );
  }
}
