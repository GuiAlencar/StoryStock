import 'package:flutter/material.dart';
import 'package:story_stock/view/pages/search_page.dart';
import 'package:story_stock/view/pages/settings_page.dart';
import 'package:story_stock/view/pages/user_page.dart';
import 'package:story_stock/view/pages/book_details_page.dart';

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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BookCard(
              bookTitle: "É assim que acaba",
              author: "Colleen Hoover",
              imagePath: "lib/images/book.png",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookDetailsPage(
                      bookTitle: "É assim que acaba",
                      author: "Colleen Hoover",
                      userImage: "lib/images/userr.png",
                      userName: "Aline Santos",
                      description:
                          "É um livro de romance usado, porém em perfeito estado de conservação.",
                    ),
                  ),
                );
              },
            ),
            BookCard(
              bookTitle: "A culpa é das Estrelas",
              author: "John Green",
              imagePath: "lib/images/a_culpa_é_das_estrelas.png",
              onTap: () {
                // Implemente a ação desejada para este livro
              },
            ),
            BookCard(
              bookTitle: "O lado feio do amor",
              author: "Colleen Hoover",
              imagePath: "lib/images/o_lado.png",
              onTap: () {},
            ),
            BookCard(
              bookTitle: "Os sete maridos de Evelyn Hugo",
              author: "Taylor Jenkins Reid",
              imagePath: "lib/images/os_sete.png",
              onTap: () {},
            ),
            BookCard(
              bookTitle: "Amor & Gelato",
              author: "Jenna Evans Welch",
              imagePath: "lib/images/amor.png",
              onTap: () {},
            ),
            BookCard(
              bookTitle: "O Homem de Giz",
              author: "C. J. Tudor",
              imagePath: "lib/images/o_homem.png",
              onTap: () {
                // Implemente a ação desejada para este livro
              },
            ),
            BookCard(
              bookTitle: "Todas as suas (im)perfeições",
              author: "Colleen Hoover",
              imagePath: "lib/images/todas.png",
              onTap: () {
                // Implemente a ação desejada para este livro
              },
            ),
          ],
        ),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchPage()));
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserPage()));
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
  final Function onTap;

  BookCard({
    required this.bookTitle,
    required this.author,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: InkWell(
        onTap: () => onTap(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.width * 0.8 * 1.3,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8.0),
            Text(
              bookTitle,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 4.0),
            Text(
              author,
              style: TextStyle(fontSize: 14.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
