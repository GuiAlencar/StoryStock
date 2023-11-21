import 'package:flutter/material.dart';
import 'package:story_stock/view/pages/home_page.dart';
import 'package:story_stock/view/pages/search_page.dart';
import 'package:story_stock/view/pages/settings_page.dart';
import 'package:story_stock/view/pages/user_page.dart';

void main() {
  runApp(StoryStock());
}

class StoryStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StoryStockHome(),
    );
  }
}

class WishBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de desejos"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => (SettingsPage())));
              // Navegar para a tela de configurações
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Lista de livros
          Expanded(
            child: ListView(
              children: List.generate(2, (index) {
                return ListTile(
                  leading: Icon(Icons.book),
                  title: Text("Livro ${index + 1}"),
                  subtitle: Text("Autor do Livro ${index + 1}"),
                  onTap: () {
                    // Ação quando o livro for clicado
                  },
                );
              }),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => (StoryStockHome())));
                // Navegar para a tela de livros
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => (SearchPage())));

                // Navegar para a tela de pesquisa
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage())); // Navegar para o perfil do usuário
              },
            ),
          ],
        ),
      ),
    );
  }
}