import 'package:flutter/material.dart';

void main() {
  runApp(StoryStock());
}

class StoryStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeAddressScreen(),
    );
  }
}

class ChangeAddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alterar Endereço'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Logradouro',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Digite o logradouro',
              ),
              controller: TextEditingController(text: 'Açaí'),
            ),
            SizedBox(height: 16),
            Text(
              'Endereço',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Digite o endereço',
              ),
              controller: TextEditingController(text: 'Q.07 L.05 Setor: Cristal'),
            ),
            SizedBox(height: 16),
            Text(
              'CEP',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Digite o CEP',
              ),
              controller: TextEditingController(text: '76350-000'),
            ),
            SizedBox(height: 16),
            Text(
              'Estado',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Digite o estado',
              ),
              controller: TextEditingController(text: 'Goiás'),
            ),
            SizedBox(height: 16),
            Text(
              'Número',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Digite o número',
              ),
              controller: TextEditingController(text: '233'),
            ),
            SizedBox(height: 16),
            Text(
              'Cidade',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Digite a cidade',
              ),
              controller: TextEditingController(text: 'Rubiataba'),
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
