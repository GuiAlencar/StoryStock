import 'package:flutter/material.dart';

void main() {
  runApp(StoryStock());
}

class StoryStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangePasswordScreen(),
    );
  }
}

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alterar Senha'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Senha atual',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Digite a senha atual',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Nova senha',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Digite a nova senha',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Confirme a nova senha',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirme a nova senha',
              ),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                  
                  },
                  child: Text('Cancelar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text('Salvar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
