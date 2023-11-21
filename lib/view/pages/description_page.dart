import 'package:flutter/material.dart';
import 'package:story_stock/view/pages/bookcondition_page.dart';

void main() {
  runApp(StoryStock());
}

class StoryStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DescriptionPage(),
    );
  }
}

class DescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Descrição do livro'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            // Adicione um widget para selecionar uma foto de perfil aqui.
            Text('Digite uma breve descrição sobre o livro'),
            TextFormField(
              decoration: InputDecoration(
                  hintText:
                      "Ex. É um livro de romance usado mas em perfeito estado de conservação.",
                  hintStyle:
                      TextStyle(fontSize: 10.0, color: Colors.grey.shade500)),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (BookConditionPage())));
              },
              child: Text('Próximo'),
            ),
          ],
        ),
      ),
    );
  }
}
