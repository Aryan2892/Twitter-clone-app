import 'package:flutter/material.dart';
import 'package:twitter_clone/components/custom_drawer_tile.dart';
import 'package:twitter_clone/pages/settings_page.dart';

/*
DRAWER
MENU DRAWER THAT IS ACCESSED FROM THE LEFT SIDE OF APPBAR

CONTAINS 5 COMPONENTS
- HOME
- PROFILE 
- SEARCH
- SETTINGS
- LOGOUT

*/

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
  final colorScheme = Theme.of(context).colorScheme;
    return Drawer(
      backgroundColor: colorScheme.surface,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              //Logo
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Icon(Icons.person, size: 72,
                 color: colorScheme.primary,),
                
              ),
          
              Divider(
                color: colorScheme.secondary,
              ),
              const SizedBox(height: 10,),
          
              //Home list tile
              CustomDrawerTile(
                title: "H O M E",
                icon: Icons.home,
                onTap: (){
                  Navigator.pop(context);
                },
              ),
          
              //Profile list tile
              CustomDrawerTile(
                title: "P R O F I L E",
                icon: Icons.search,
                onTap: () {
                  
                },
              ),
          
              //Search list tile
                          CustomDrawerTile(
                title: "S E A R C H",
                icon: Icons.search,
                onTap: () {
                  
                },
              ),
          
              //Settings list tile
                          CustomDrawerTile(
                title: "S E T T I N G S",
                icon: Icons.settings,
                onTap: () {
                  Navigator.pop(context);
          
                  //Navigate to settings
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SettingsPage();
                  },));
                },
              ),
          
              //Logout list tile
                          CustomDrawerTile(
                title: "S E A R C H",
                icon: Icons.search,
                onTap: () {
                  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
