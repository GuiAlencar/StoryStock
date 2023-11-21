import 'package:flutter/material.dart';

void main() {
  runApp(StoryStock());
}

class StoryStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterCreditCardScreen(),
    );
  }
}

class RegisterCreditCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Cartão de Crédito'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Nome do cartão',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Nome do titular do cartão',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Número do Cartão',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 16,
              decoration: InputDecoration(
                hintText: 'Número do cartão de crédito',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Data de Validade',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: 'MM/AA',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'CVV',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 3,
              decoration: InputDecoration(
                hintText: 'Código de segurança',
              ),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Lógica do botão Cancelar
                  },
                  child: Text('Cancelar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Lógica do botão Salvar
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
