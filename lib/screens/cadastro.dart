import 'package:flutter/material.dart';
export 'cadastro.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Novo Cadastro de Carro'),
          backgroundColor: Colors.redAccent,
          actions: [
            TextButton(
              child: const Text('SALVAR', style: TextStyle(color: Colors.white)),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(border: UnderlineInputBorder(), label: Text("Nome do Modelo")),
            ),
            const TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(border: UnderlineInputBorder(), label: Text("Preço do Carro")),
            ),
          ],
        ));
  }
}