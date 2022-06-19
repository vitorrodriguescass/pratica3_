import 'package:flutter/material.dart';
export 'lista.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Concessionária Carros Tunados'),
          backgroundColor: Colors.redAccent,
          actions: [
            IconButton(
                icon: const Icon(Icons.exit_to_app),
                onPressed: () => {
                  Navigator.pushReplacementNamed(context, '/')
                }),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: Colors.redAccent,
          onPressed: () => {
            Navigator.pushNamed(context, '/cadastro')
          },
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (ctx, index) {
            return ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/carro.jpg'),
              ),
              title: Text("Carro Tunado ${index + 1}"),
              subtitle: Text("Preço RS:${index + 2} 0,000"),
              trailing: const Text("Ligue 9 XXXX-XXXX"),
            );
          },
        ));
  }
}
