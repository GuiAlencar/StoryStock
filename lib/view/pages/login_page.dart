import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:story_stock/services/firebase_service.dart';
import 'package:story_stock/view/pages/forgot_page.dart';
import 'package:story_stock/view/pages/home_page.dart';
import 'package:story_stock/view/pages/register_page.dart';

void main() {
  runApp(StoryStock());
}

class StoryStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  //get FirebaseService => null;

  Future<void> fazerLogin(BuildContext context) async {
    log('entrou');
    String? mensagem = await FirebaseService().logarUsuario(
      email: emailController.text,
      senha: senhaController.text,
    );

    log(mensagem.toString());

    if (mensagem != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(mensagem)),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => StoryStockHome()),
      );
    }
  }

// ---------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('lib/images/logo.png', width: 150, height: 150),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: senhaController,
                decoration: InputDecoration(
                  labelText: 'Senha',
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => fazerLogin(context),
              child: Text('Entrar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordPage()));
              },
              child: Text('Esqueceu a senha?'),
            ),
            TextButton(
              onPressed: () {
                fazerLogin(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Text('Não tem uma conta? Cadastre-se'),
            ),
          ],
        ),
      ),
    );
  }
}
