import 'package:app_prestamos/config/menu/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {

    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;


    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });
        final menuItem = MenuItem.appMenuItems[value];
        widget.scaffoldKey.currentState?.closeDrawer();
        context.push(menuItem.link);
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 16, 10),
          child: const Text('Main'),
        ),

        ...MenuItem.appMenuItems
          .sublist(0,3)
          .map(
          (menu) => NavigationDrawerDestination(
            icon: Icon(menu.icon), 
            label: Text(menu.title),
          ),
        ),

        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),

        const Padding(
          padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
          child: Text('More Option'),
        ),

        ...MenuItem.appMenuItems
          .sublist(3)
          .map(
          (menu) => NavigationDrawerDestination(
            icon: Icon(menu.icon), 
            label: Text(menu.title),

          ),
        ),


      ]
    );
  }
}