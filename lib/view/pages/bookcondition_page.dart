import 'package:flutter/material.dart';
import 'package:story_stock/view/pages/bookgenres_page.dart';

class BookConditionPage extends StatefulWidget {
  const BookConditionPage({super.key});

  @override
  _BookConditionPageState createState() => _BookConditionPageState();
}

class _BookConditionPageState extends State<BookConditionPage> {
  late String selectedCondition; // Valor inicial padrão

  List<String> condition = [
    "Novo",
    "Usado",
  ];

  @override
  void initState() {
    super.initState();
    selectedCondition =
        condition[0]; // Defina o valor inicial para o primeiro gênero
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Condição do livro"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16.0),
            DropdownButton<String>(
              value: selectedCondition,
              items: condition.map((condition) {
                return DropdownMenuItem<String>(
                  value: condition,
                  child: Text(condition),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCondition = value!;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => (BookGenresPage())));
              },
              child: const Text("Próximo"),
            ),
          ],
        ),
      ),
    );
  }
}
