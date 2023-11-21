import 'package:flutter/material.dart';
import 'package:story_stock/view/pages/home_page.dart';
import 'package:story_stock/view/pages/search_page.dart';
import 'package:story_stock/view/pages/settings_page.dart';
import 'package:story_stock/view/pages/wishbooks_page.dart';
import 'package:story_stock/view/pages/booksannounced_page.dart';
import 'package:story_stock/view/pages/myshoppingcart_page.dart';
import 'package:story_stock/view/pages/credit_page.dart';
import 'package:story_stock/view/pages/aboutus_page.dart';

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

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Meu perfil'),
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
          children: <Widget>[
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle_outlined, size: (70)),
                  Text('Olá, usuário', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border_rounded),
              title: Text('Lista de desejos'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            (WishBooks()))); // Navegar para a tela de pesquisa
              },
            ),
            ListTile(
              leading: Icon(Icons.book_outlined),
              title: Text('Livros anunciados'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            (BooksAnnounced()))); // Navegar para a tela de pesquisa
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text('Meu carrinho'),
              onTap: () {
                // Navegar para a tela de pesquisa
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (ShoppingCartPage())));
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money_outlined),
              title: Text('Minhas moedas StoryStock'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (CreditPage())));
                // Navegar para a tela de pesquisa
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('Sobre nós'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (AboutUsPage())));
// Navegar para a tela de pesquisa
              },
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserPage()));
                  // Navegar para o perfil do usuário
                },
              ),
            ],
          ),
        ));
  }
}
