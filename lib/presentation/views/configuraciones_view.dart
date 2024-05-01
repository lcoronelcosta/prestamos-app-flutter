import 'package:app_prestamos/presentation/screens/shared/list_options_configuraciones.dart';
import 'package:app_prestamos/presentation/screens/shared/options.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfiguracionView extends StatelessWidget {
  const ConfiguracionView({super.key});

  @override
  Widget build(BuildContext context) {

    listOptionsConfiguraciones;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuraciones'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: listOptionsConfiguraciones.length,
        itemBuilder: (context, index) {
          final Options option = listOptionsConfiguraciones[index];
          return ListTile(
            title: Text(option.title),
            subtitle: Text(option.subtitle),
            leading: Icon(option.icon),
            onTap: () => context.go('/configuraciones/clientes'),
          );
        },
      )
    );
  }
}