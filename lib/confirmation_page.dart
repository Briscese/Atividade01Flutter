import 'package:flutter/material.dart';

class ConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmação do Pedido'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Logo da página de login
            Image.asset(
              'assets/images/png-transparent-akatsuki-logo.png',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 30),
            // Mensagem de confirmação
            Text(
              'Pedido Confirmado!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            // Botão para voltar
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Voltar à página anterior
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
