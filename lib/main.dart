import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:story_stock/services/firebase_service.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material app bars'),
      ),
      body: FutureBuilder(
        future: getCadastro(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(snapshot.data?[index]['nome']),
                    Text(snapshot.data?[index]['email']),
                    Text(snapshot.data?[index]['nascimento']),
                    Text(snapshot.data?[index]['cpf']),
                    Text(snapshot.data?[index]['telefone']),
                    Text(snapshot.data?[index]['logradouro']),
                    Text(snapshot.data?[index]['endereco']),
                    Text(snapshot.data?[index]['cep']),
                    Text(snapshot.data?[index]['estado']),
                    Text(snapshot.data?[index]['numeroCasa']),
                    Text(snapshot.data?[index]['cidade']),
                  ],
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
    );
  }
}
