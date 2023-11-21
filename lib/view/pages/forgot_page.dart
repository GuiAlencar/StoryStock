import 'package:flutter/material.dart';

void main() {
  runApp(StoryStock());
}

class StoryStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ForgotPasswordPage(),
    );
  }
}

class ForgotPasswordPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Esqueci Minha Senha'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Para recuperar a senha, informe seu endereço de email que nós enviaremos sua nova senha.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text('Endereço de Email'),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Digite seu email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
