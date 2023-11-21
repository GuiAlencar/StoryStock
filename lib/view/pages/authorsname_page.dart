import 'package:flutter/material.dart';
import 'package:story_stock/view/pages/description_page.dart';

void main() {
  runApp(StoryStock());
}

class StoryStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthorsNamePage(),
    );
  }
}

class AuthorsNamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nome do autor'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            // Adicione um widget para selecionar uma foto de perfil aqui.
            Text('Digite o nome do autor do livro'),
            TextFormField(
              decoration: InputDecoration(),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => (DescriptionPage())));
                },
                child: Text('Confirmar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
