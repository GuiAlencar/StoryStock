import 'package:flutter/material.dart';
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

class StoryStockHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StoryStock"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return BookCard(
              bookTitle: "É assim que acaba",
              author: "Colleen Hoover",
              imagePath: "lib/images/book.png",
            );
          } else {
            return BookCard(
              bookTitle: "Livro ${index + 1}",
              author: "Autor ${index + 1}",
              imagePath: "lib/images/placeholder.png", // Substitua pelo caminho da sua imagem de espaço reservado
            );
          }
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final String bookTitle;
  final String author;
  final String imagePath;

  BookCard({
    required this.bookTitle,
    required this.author,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 250.0, 
            height: 350.0, 
          ),
          SizedBox(height: 4),
          Text(
            bookTitle,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
          ),
          SizedBox(height: 4),
          Text(author, style: TextStyle(fontSize: 18)), 
          SizedBox(height: 4),
          ElevatedButton(
            onPressed: () {
            },
            child: Text("Detalhes", style: TextStyle(fontSize: 20)), 
          ),
        ],
      ),
    );
  }
}
