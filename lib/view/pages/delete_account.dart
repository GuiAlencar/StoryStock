import 'package:flutter/material.dart';

void main() {
  runApp(StoryStock());
}

class StoryStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DeleteAccountScreen(),
    );
  }
}

class DeleteAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exclusão de Conta'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Tem certeza que deseja deletar sua conta StoryStock permanentemente?',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Lógica do botão "Sim" (Excluir conta)
                      Navigator.pop(context); // Fecha a tela de confirmação
                    },
                    child: Text('Sim'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Lógica do botão "Não" (Cancelar exclusão)
                      Navigator.pop(context); // Fecha a tela de confirmação
                    },
                    child: Text('Não'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}