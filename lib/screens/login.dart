import 'package:flutter/material.dart';
export 'login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.directions_car_outlined, size: 72, color: Colors.redAccent),
            const Text(
              'Carros Tunados',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child:
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Email')),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: const TextField(decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Senha')), obscureText: true),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                  ),
                  onPressed: () => {
                    Navigator.pushReplacementNamed(context, '/lista')
                  },
                  child: const Text('ENTRAR')),
            ),
          ],
        ));
  }
}
