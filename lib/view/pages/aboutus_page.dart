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

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre nós"),
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
              'O aplicativo é importante pois soluciona o principal problema da maioria dos leitores que é a incapacidade de comprar livros e pagar o frete, que impede que esses leitores tenham acesso à informações, ideias e histórias contidas nos livros. O aplicativo promove a sustentabilidade ambiental, permite a aquisição acessível à literatura e o compartilhamento de conhecimento. O modelo de vendas entre usuários cria uma economia colaborativa, onde os participantes se beneficiam mutuamente por meio do compartilhamento de recursos.',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
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
            child: const Text('Confirmar'),
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
