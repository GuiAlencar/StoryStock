import 'package:flutter/material.dart';

void main() {
  runApp(StoryStock());
}

class StoryStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResetPasswordPage(),
    );
  }
}

class ResetPasswordPage extends StatefulWidget {
  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  TextEditingController senhaController = TextEditingController();
  TextEditingController confirmarSenhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Digite sua Nova Senha"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: senhaController,
              obscureText: true, // Para ocultar a senha
              decoration: InputDecoration(labelText: 'Senha'),
            ),
            TextField(
              controller: confirmarSenhaController,
              obscureText: true, // Para ocultar a senha
              decoration: InputDecoration(labelText: 'Confirmar Senha'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implementar ação ao clicar no botão Redefinir
                // Você pode acessar os valores dos campos usando as variáveis de controle, por exemplo, senhaController.text para obter a senha.
              },
              child: Text('Redefinir'),
            ),
          ],
        ),
      ),
    );
  }
}
