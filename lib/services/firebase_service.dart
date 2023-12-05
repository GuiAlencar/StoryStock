import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<List> getCadastro() async {
    List cadastro = [];
    CollectionReference collectionReferenceCadastro = db.collection('cadastro');

    QuerySnapshot queryCadastro = await collectionReferenceCadastro.get();

    queryCadastro.docs.forEach((documento) {
      cadastro.add(documento.data());
    });

    return cadastro;
  }

//Mandar para o FireBase
  Future<void> addCadastro(
      String nome,
      String email,
      String dataNascimento,
      String definirSenha,
      String confirmarSenha,
      String cpf,
      String telefone,
      String logradouro,
      String endereco,
      String cep,
      String estado,
      String numero,
      String cidade) async {
    await db.collection("cadastro").add({
      "nome": nome,
      "email": email,
      "dataNascimento": dataNascimento,
      "definirSenha": definirSenha,
      "confirmarSenha": confirmarSenha,
      "cpf": cpf,
      "telefone": telefone,
      "logradouro": logradouro,
      "endereco": endereco,
      "cep": cep,
      "estado": estado,
      "numero": numero,
      "cidade": cidade
    });
  }

  Future<void> addCadastroLivro(
      String nomeLivro, String nomeAutor, String descricao) async {
    await db.collection("cadastroLivro").add({
      "nomeLivro": nomeLivro,
      "nomeAutor": nomeAutor,
      "descricao": descricao,
    });
  }

//VALIDAÇÃO LOGIN
  Future<String?> logarUsuario(
      {required String email, required String senha}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: senha);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
