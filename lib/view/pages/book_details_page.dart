import 'package:flutter/material.dart';

class BookDetailsPage extends StatefulWidget {
  final String bookTitle;
  final String author;
  final String userImage;
  final String userName;
  final String description;

  BookDetailsPage({
    required this.bookTitle,
    required this.author,
    required this.userImage,
    required this.userName,
    required this.description,
  });

  @override
  _BookDetailsPageState createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  bool isFavorite = false;
  bool isInCart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.bookTitle, style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: Icon(
              isInCart ? Icons.shopping_cart : Icons.add_shopping_cart,
              color: Colors.blue,
            ),
            onPressed: () {
              setState(() {
                isInCart = !isInCart;
              });
              if (isInCart) {
                // para adicionar o livro ao carrinho aqui
                print("Livro adicionado ao carrinho!");
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                "lib/images/book.png",
                width: 300.0,
                height: 300.0,
              ),
            ),
            SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.bookTitle,
                          style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          widget.author,
                          style: TextStyle(fontSize: 18.0, color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            isInCart
                                ? Icons.shopping_cart
                                : Icons.add_shopping_cart,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            setState(() {
                              isInCart = !isInCart;
                            });
                            if (isInCart) {
                              // adicionar o livro ao carrinho aqui
                              print("Livro adicionado ao carrinho!");
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(widget.userImage),
                ),
                SizedBox(width: 8.0),
                Text(
                  widget.userName,
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              "Descrição: ${widget.description}",
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: BookDetailsPage(
        bookTitle: "Flutter Book",
        author: "Author Name",
        userImage: "lib/images/user.png",
        userName: "John Doe",
        description: "This is a Flutter book. Lorem ipsum...",
      ),
    ),
  );
}
