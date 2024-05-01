import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNavigationBar extends StatelessWidget {


  const CustomNavigationBar({
    super.key, 
  });

  void onItemTapped( BuildContext context, int index ){
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/prestamos');
        break;
      case 2:
        context.go('/configuraciones');
        break;
      case 3:
        context.go('/reportes');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return BottomNavigationBar(
      onTap: (value) => onItemTapped(context, value),
      type: BottomNavigationBarType.shifting,
      currentIndex: _calculateSelectedIndex(context),
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: 'Home',
          backgroundColor: colors.primary,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.credit_card_outlined),
          label: 'Prestamos',
          backgroundColor: colors.primary
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.settings),
          label: 'Configuraciones',
          backgroundColor: colors.primary,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.bar_chart_outlined),
          label: 'Reportes',
          backgroundColor: colors.primary,
        ),
      ]
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location.startsWith('/h')) {
      return 0;
    }
    if (location.startsWith('/p')) {
      return 1;
    }
    if (location.startsWith('/c')) {
      return 2;
    }
    if (location.startsWith('/r')) {
      return 3;
    }
    return 0;
  }
}

