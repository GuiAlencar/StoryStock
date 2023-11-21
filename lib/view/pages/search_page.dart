import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late String selectedGenre; // Valor inicial padrão
  TextEditingController searchController = TextEditingController();

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
    selectedGenre = genres[0]; // Defina o valor inicial para o primeiro gênero
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Busca de Livros"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Digite o título do livro",
              ),
            ),
            SizedBox(height: 16.0),
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
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Aqui você pode realizar a busca com o título e o gênero selecionado
                // Por exemplo, você pode usar os valores de searchController.text e selectedGenre
                // para buscar os livros e exibir os resultados.
              },
              child: const Text("Buscar"),
            ),
          ],
        ),
      ),
    );
  }
}
