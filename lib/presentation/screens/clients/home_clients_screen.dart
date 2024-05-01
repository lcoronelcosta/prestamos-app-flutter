import 'package:app_prestamos/presentation/providers/client/clients_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeClientsScreen extends StatelessWidget {
  const HomeClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Clientes"),
      ),
      body: const _HomeClientsScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/configuraciones/clientes/add'), 
        child: const Icon(Icons.add)
      ),
      /*ListTile(
        title: const Text('Banco Pacifico'),
        subtitle: const Text('Banco Pacifico'),
        leading: const Icon(Icons.account_balance_rounded, size: 40,),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
        onTap: () {},
      ),*/
    );
  }
}

class _HomeClientsScreen extends ConsumerStatefulWidget {
  const _HomeClientsScreen();

  @override
  _HomeClientsScreenState createState() => _HomeClientsScreenState();
}

class _HomeClientsScreenState extends ConsumerState<_HomeClientsScreen> {
  
  @override
  void initState() {
    super.initState();
    ref.read(getClientsProvider.notifier).loadNextPage();
  }
  
  @override
  Widget build(BuildContext context) {

    final listClients = ref.watch(getClientsProvider);

    return ListView.builder(
      itemCount: listClients.length,
      itemBuilder: (context, index) {
        final client = listClients[index];
        return ListTile(
          title: Text(client.nombres),
          subtitle: Text(client.apellidos),
          leading: const Icon(Icons.person_outlined, size: 40),
          trailing: MenuAnchor(
            builder: (context, controller, child) {
              return IconButton(
                onPressed: () {
                  if(controller.isOpen){
                    controller.close();
                  }else{
                    controller.open();
                  }
                }, 
                icon: const Icon(Icons.more_vert_outlined)
              );
            },
            menuChildren: [
              MenuItemButton(
                leadingIcon: const Icon(Icons.edit),
                child: const Text('Editar'),
                onPressed: () {},
              ),
              MenuItemButton(
                leadingIcon: const Icon(Icons.delete),
                child: const Text('Eliminar'),
                onPressed: () {},
              ),
              MenuItemButton(
                leadingIcon: const Icon(Icons.money),
                child: const Text('Prestamos'),
                onPressed: () {},
              ),
            ]
          )
          /*IconButton(
            icon: const Icon(Icons.more_vert_outlined),
            onPressed: () {
              
            },
          );*/
        );
      },
    );
  }
}