import 'package:flutter/material.dart';

class BankScreen extends StatelessWidget {

  final String title;

  const BankScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: const _BankView(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {}, 
        label: const Text('Guardar'),
        icon: const Icon(Icons.save_as),
      ),
    );
  }
}

class _BankView extends StatelessWidget {
  
  const _BankView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Center(
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  //icon: Icon(Icons.person, size: 35,),
                  hintText: 'Banco Pichincha',
                  labelText: 'Nombre *',
                  border: OutlineInputBorder()
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}