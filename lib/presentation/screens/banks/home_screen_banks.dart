import 'package:flutter/material.dart';

class HomeScreenBanks extends StatelessWidget {
  const HomeScreenBanks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bancos"),
      ),
      body: ListTile(
        title: const Text('Banco Pacifico'),
        subtitle: const Text('Banco Pacifico'),
        leading: const Icon(Icons.account_balance_rounded, size: 40,),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
        onTap: () {},
        
        /*onTap: () {
          /*Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ButtonsScreen()
            )
          );*/
          //Navigator.pushNamed(context, menuItem.link);

        },*/
      ),
    );
  }
}