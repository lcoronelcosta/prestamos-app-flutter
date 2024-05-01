import 'package:app_prestamos/presentation/screens/shared/list_options_prestamos.dart';
import 'package:flutter/material.dart';

import '../screens/shared/options.dart';

class PrestamosView extends StatelessWidget {
  const PrestamosView({super.key});

  @override
  Widget build(BuildContext context) {
    
    listOptionsPrestamos;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Prestamos'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: listOptionsPrestamos.length,
        itemBuilder: (context, index) {
          final Options option = listOptionsPrestamos[index];
          return ListTile(
            title: Text(option.title),
            subtitle: Text(option.subtitle),
            leading: Icon(option.icon)
          );
        },
      )
    );
  }
}