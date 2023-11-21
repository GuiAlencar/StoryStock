import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_stock/view/pages/booksannounced_page.dart';

class BookGenresPage extends StatefulWidget {
  const BookGenresPage({super.key});

  @override
  _BookGenresPageState createState() => _BookGenresPageState();
}

class _BookGenresPageState extends State<BookGenresPage> {
  late String selectedGenres; // Valor inicial padrão

  List<String> genres = [
    "Romance",
    "Suspense",
    "Autoajuda",
    "Poesia",
    "Fábula",
    "Artigo Acadêmico e Científico",
  ];

  @override
  void initState() {
    super.initState();
    selectedGenres = genres[0]; // Defina o valor inicial para o primeiro gênero
  }

  Future<void> _mostrarPopUp(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text('Livro postado com sucesso!'),
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
        title: Text("Gênero do livro"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16.0),
            DropdownButton<String>(
              value: selectedGenres,
              items: genres.map((genres) {
                return DropdownMenuItem<String>(
                  value: genres,
                  child: Text(genres),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedGenres = value!;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                await _mostrarPopUp(context);
              },
              child: const Text("Concluir"),
            ),
          ],
        ),
      ),
    );
  }
}
