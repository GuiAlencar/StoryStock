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

class WishBooks2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de desejos"),
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
      body: ListView(
        children: [
          ListTile(
            title: Text('A culpa é das estrelas'),
            subtitle: Text('Jonh Green'),
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  'lib/images/a_culpa_é_das_estrelas.png'), // Substitua pelo caminho real da imagem
            ),
          ),
          ListTile(
            title: Text('Os sete maridos de Evelyn Hugo'),
            subtitle: Text('Taylor Jenkins Reid'),
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  'lib/images/os_sete.png'), // Substitua pelo caminho real da imagem
            ),
          ),
          ListTile(
            title: Text('É assim que acaba'),
            subtitle: Text('Colleen Hoover'),
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  'lib/images/book.png'), // Substitua pelo caminho real da imagem
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
