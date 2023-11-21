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

class ShoppingCartPage extends StatefulWidget {
  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  List<Item> items = [
    Item("Item 1", Icons.book, 10.0),
    Item("Item 2", Icons.book, 15.0),
    Item("Item 3", Icons.book, 20.0),
    Item("Item 4", Icons.book, 12.0),
    Item("Item 5", Icons.book, 8.0),
  ];

  double total = 0.0;

  @override
  void initState() {
    super.initState();
    calculateTotal();
  }

  void calculateTotal() {
    double sum = 0.0;
    for (var item in items) {
      sum += item.valor;
    }
    setState(() {
      total = sum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu carrinho'),
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
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(items[index].icone),
                  title: Text(items[index].nome),
                  subtitle: Text('R\$ ${items[index].valor.toStringAsFixed(2)}'),
                );
              },
            ),
          ),
          Text(
            'Total: R\$ ${total.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Implemente a ação de confirmação aqui
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
              onPressed: ()
               {
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage()));// Navegar para o perfil do usuário
              },
            ),
          ],
        ),
      ),
    );
  }
}


class Item {
  final String nome;
  final IconData icone;
  final double valor;

  Item(this.nome, this.icone, this.valor);
}
