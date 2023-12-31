import 'package:flutter/material.dart';
import 'package:story_stock/services/firebase_service.dart';
import 'package:story_stock/view/pages/register_page.dart';

void main() {
  runApp(StoryStock());
}

class StoryStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  final Map<String, TextEditingController> controllersMap;

  SignUpPage(this.controllersMap);

  //final TextEditingController nomeController;

  //SignUpPage(this.nomeController);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  //final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController cpfController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
  TextEditingController logradouroController = TextEditingController();
  TextEditingController enderecoController = TextEditingController();
  TextEditingController cepController = TextEditingController();
  TextEditingController estadoController = TextEditingController();
  TextEditingController numeroController = TextEditingController();
  TextEditingController cidadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar uma Nova Conta"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: cpfController,
              decoration: InputDecoration(labelText: 'CPF'),
            ),
            TextField(
              controller: telefoneController,
              decoration: InputDecoration(labelText: 'Telefone'),
            ),
            TextField(
              controller: logradouroController,
              decoration: InputDecoration(labelText: 'Logradouro'),
            ),
            TextField(
              controller: enderecoController,
              decoration: InputDecoration(labelText: 'Endereço'),
            ),
            TextField(
              controller: cepController,
              decoration: InputDecoration(labelText: 'CEP'),
            ),
            TextField(
              controller: estadoController,
              decoration: InputDecoration(labelText: 'Estado'),
            ),
            TextField(
              controller: numeroController,
              decoration: InputDecoration(labelText: 'Número'),
            ),
            TextField(
              controller: cidadeController,
              decoration: InputDecoration(labelText: 'Cidade'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                //await addCadastro(widget.nomeController.text);
                final nomeController = widget.controllersMap['nomeController'];
                final emailController =
                    widget.controllersMap['emailController'];
                final dataNascimentoController =
                    widget.controllersMap['dataNascimentoController'];
                final definirSenhaController =
                    widget.controllersMap['definirSenhaController'];
                final confirmarSenhaController =
                    widget.controllersMap['confirmarSenhaController'];

                if (nomeController != null &&
                    emailController != null &&
                    dataNascimentoController != null &&
                    definirSenhaController != null &&
                    confirmarSenhaController != null &&
                    confirmarSenhaController != null &&
                    cpfController != null &&
                    telefoneController != null &&
                    logradouroController != null &&
                    enderecoController != null &&
                    cepController != null &&
                    estadoController != null &&
                    numeroController != null &&
                    cidadeController != null) {
                  final nome = nomeController.text;
                  final email = emailController.text;
                  final dataNascimento = dataNascimentoController.text;
                  final definirSenha = definirSenhaController.text;
                  final confirmarSenha = confirmarSenhaController.text;
                  final cpf = cpfController.text;
                  final telefone = telefoneController.text;
                  final logradouro = logradouroController.text;
                  final endereco = enderecoController.text;
                  final cep = cepController.text;
                  final estado = estadoController.text;
                  final numero = numeroController.text;
                  final cidade = cidadeController.text;

                  await FirebaseService().addCadastro(
                      nome,
                      email,
                      dataNascimento,
                      definirSenha,
                      confirmarSenha,
                      cpf,
                      telefone,
                      logradouro,
                      endereco,
                      cep,
                      estado,
                      numero,
                      cidade);
                } else {
                  // Tratar o caso em que os controladores são nulos
                }
                // ------------------------------------------------
                // void _showCadastroSuccessMessage(BuildContext context) {
                //   final snackBar = SnackBar(
                //     content: Text('Usuário cadastrado com sucesso!'),
                //     duration: Duration(seconds: 2),
                //   );
                //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                // }
                // ------------------------------------------------
              },
              child: Text('Criar Conta'),
            ),
          ],
        ),
      ),
    );
  }
}
