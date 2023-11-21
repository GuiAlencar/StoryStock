import 'package:cloud_firestore/cloud_firestore.dart';

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
Future<void> addCadastro(String nome, String email) async {
  await db.collection("cadastro").add({"nome": nome, "email": email});
}
