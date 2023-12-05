import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:story_stock/services/firebase_service.dart';
import 'package:story_stock/view/pages/home_page.dart';
import 'package:story_stock/view/pages/register_page.dart';
import 'package:story_stock/view/pages/registerbook_page.dart';
import 'firebase_options.dart';

import 'package:story_stock/view/pages/login_page.dart';
import 'package:story_stock/view/theme/dark_mode.dart';
import 'package:story_stock/view/theme/light_mode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class StoryStock extends StatelessWidget {
  const StoryStock({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: lighMode,
      darkTheme: darkMode,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: StoryStock(),
    );
  }
}

// -----------------------------------------
// BUSCANDO DADOS DO FIREBASE
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
        future: FirebaseService().getCadastro(),
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
