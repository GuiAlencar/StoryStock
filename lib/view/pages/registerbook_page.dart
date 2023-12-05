import 'package:flutter/material.dart';
import 'package:story_stock/view/pages/booksannounced_page.dart';

class RegisterBookPage extends StatefulWidget {
  const RegisterBookPage({super.key});

  @override
  _RegisterBookPageState createState() => _RegisterBookPageState();
}

class _RegisterBookPageState extends State<RegisterBookPage> {
  late String selectedGenre;
  late String selectedCondition;

  List<String> genres = [
    "Romance",
    "Suspense",
    "Autoajuda",
    "Poesia",
    "Fábula",
    "Artigo Acadêmico e Científico",
  ];
  List<String> condition = [
    "Novo",
    "Usado",
  ];

  @override
  void initState() {
    super.initState();
    selectedGenre = genres[0];
    selectedCondition = condition[0];
    // Defina o valor inicial para o primeiro gênero
  }

  Future<void> _mostrarPopUp(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text('Livro cadastrado com sucesso!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (BooksAnnounced())));
              },
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Livros"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            // Adicione um widget para selecionar uma foto de perfil aqui.
            Text('Digite nome do livro'),
            TextFormField(
              decoration: InputDecoration(),
            ),
            SizedBox(height: 20),
            // Adicione um widget para selecionar uma foto de perfil aqui.
            Text('Digite o nome do autor do livro'),
            TextFormField(
              decoration: InputDecoration(),
            ),
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
            SizedBox(height: 20),
            DropdownButton<String>(
              value: selectedGenre,
              items: genres.map((genre) {
                return DropdownMenuItem<String>(
                  value: genre,
                  child: Text(genre),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedGenre = value!;
                });
              },
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              value: selectedCondition,
              items: condition.map((condition) {
                return DropdownMenuItem<String>(
                  value: condition,
                  child: Text(condition),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCondition = value!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await _mostrarPopUp(context);
              },
              child: const Text("Cadastrar"),
            ),
          ],
        ),
      ),
    );
  }
}
