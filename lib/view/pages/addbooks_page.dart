import 'package:flutter/material.dart';
import 'package:story_stock/view/pages/home_page.dart';
import 'package:story_stock/view/pages/registerbook_page.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

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

class AddPhotosPage extends StatefulWidget {
  @override
  State<AddPhotosPage> createState() => _AddPhotosPageState();
}

class _AddPhotosPageState extends State<AddPhotosPage> {
  late List<String>
      selectedPhotos; // Lista para armazenar caminhos das fotos selecionadas

  @override
  void initState() {
    super.initState();
    selectedPhotos =
        List<String>.filled(5, ''); // Inicializa a lista com 5 elementos vazios
  }

  Future<void> pickAndUploadImage(int index) async {
    final ImagePicker picker = ImagePicker();
    XFile? file = await picker.pickImage(source: ImageSource.gallery);

    if (file != null) {
      setState(() {
        selectedPhotos[index] =
            file.path; // Atualiza o caminho da foto na lista
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicione Fotos dos Livros'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            pickAndUploadImage(0);
          },
          child: Container(
            width: 300.0,
            height: 300.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade600,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: selectedPhotos[0].isNotEmpty
                ? Image.file(
                    // Exibe a imagem selecionada se estiver disponível
                    File(selectedPhotos[0]),
                    fit: BoxFit.cover,
                  )
                : Icon(
                    Icons.add,
                    size: 40.0,
                    color: Colors.grey,
                  ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RegisterBookPage(),
            ),
          ); // Adicione a lógica para confirmar e processar as fotos aqui
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
