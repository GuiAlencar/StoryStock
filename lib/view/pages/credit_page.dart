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

class CreditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minhas moedas Storystock"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => (SettingsPage())));
              // Navegar para a tela de configurações
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 60.0, vertical: 60.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.purple.shade900,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              'Cada usuário ganha uma moeda ao realizar o cadastro, utilizada para escolher 1 livro desejado. Ao gastar essa moeda, você poderá adquirir outro por meio da oferta de um outro livro. Ao ser confirmada a entrega de um livro, o remetente recebe mais uma moeda.',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 60.0),
            child: Text(
              'Minhas moedas StoryStock: 5 moedas',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Container()),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          (UserPage()))); // Implemente a ação de confirmação aqui
            },
            child: Text('Confirmar'),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (StoryStockHome())));
                // Navegar para a tela de livros
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (SearchPage())));

                // Navegar para a tela de pesquisa
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            UserPage())); // Navegar para o perfil do usuário
              },
            ),
          ],
        ),
      ),
    );
  }
}
