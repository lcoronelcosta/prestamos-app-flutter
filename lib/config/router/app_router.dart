import 'package:app_prestamos/presentation/screens/clients/client_screen.dart';
import 'package:app_prestamos/presentation/screens/clients/home_clients_screen.dart';
import 'package:app_prestamos/presentation/screens/home/home_screen.dart';
import 'package:app_prestamos/presentation/views/configuraciones_view.dart';
import 'package:app_prestamos/presentation/views/home_view.dart';
import 'package:app_prestamos/presentation/views/prestamos_view.dart';
import 'package:app_prestamos/presentation/views/reportes_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder:
        (BuildContext context, GoRouterState state, Widget child) {
          return HomeScreen(childView: child);
        },
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (context, state) {
            return const HomeView();
          },
        ),
        GoRoute(
          path: '/configuraciones',
          builder: (context, state) {
            return const ConfiguracionView();
          },
          routes: <RouteBase>[
            // The details screen to display stacked on the inner Navigator.
            // This will cover screen A but not the application shell.
            GoRoute(
              path: 'clientes',
              builder: (BuildContext context, GoRouterState state) {
                return const HomeClientsScreen();
              },
            ),
            GoRoute(
              path: 'clientes/add',
              builder: (context, state) {
                return const ClientScreen();
              },
            )
          ],
        ),
        GoRoute(
          path: '/prestamos',
          builder: (context, state) {
            return const PrestamosView();
          },
        ),
        GoRoute(
          path: '/reportes',
          builder: (context, state) {
            return const ReporteView();
          },
        ),
      ]
    ),
  ]
  /*routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeScreen(pageIndex: 0);
      }
    ),
    GoRoute(
      path: '/prestamos',
      builder: (context, state) {
        return const HomeScreen(pageIndex: 1);
      },
    ),
    GoRoute(
      path: '/configuraciones',
      builder: (context, state) {
        return const HomeScreen(pageIndex: 2);
      }
    ),
    GoRoute(
      path: '/reportes',
      builder: (context, state) {
        return const HomeScreen(pageIndex: 3);
      }
    ),
  ]*/
);