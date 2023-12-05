import 'dart:io';
import 'package:flutter/material.dart';
import 'package:story_stock/view/pages/home_page.dart';
<<<<<<< HEAD
import 'package:story_stock/view/pages/registerbook_page.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
=======
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:story_stock/view/pages/registerbook_page.dart';
>>>>>>> 16fa91e851bdf2ed13bd790af1bc1da208bea451

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
<<<<<<< HEAD
=======
  const AddPhotosPage({super.key});

>>>>>>> 16fa91e851bdf2ed13bd790af1bc1da208bea451
  @override
  State<AddPhotosPage> createState() => _AddPhotosPageState();
}

class _AddPhotosPageState extends State<AddPhotosPage> {
<<<<<<< HEAD
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
=======
  final FirebaseStorage storage = FirebaseStorage.instance;

  Future<XFile?> getImage() async {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
    return image;
  }

  Future<void> upload(String path) async {
    File file = File(path);
    try {
      String ref = 'images/img-${DateTime.now().toString()}.jpg';
      await storage.ref(ref).putFile(file);
    } on FirebaseException catch (e) {
      throw Exception('Erro no upload: ${e.code}');
    }
  }

  pickAndUploadImage() async {
    XFile? file = await getImage();
    if (file != null) {
      await upload(file.path);
>>>>>>> 16fa91e851bdf2ed13bd790af1bc1da208bea451
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicione Fotos dos Livros'),
      ),
<<<<<<< HEAD
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
=======
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return PhotoIcon(
                    onPressed: pickAndUploadImage,
                  );
                },
>>>>>>> 16fa91e851bdf2ed13bd790af1bc1da208bea451
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
<<<<<<< HEAD
=======
          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            (RegisterBookPage()))); // Adicione a lógica para confirmar e processar as fotos aqui
              },
              child: Text('Confirmar'),
            ),
          ),
        ],
      ),
    );
  }
}

class PhotoIcon extends StatefulWidget {
  final VoidCallback onPressed;
  PhotoIcon({required this.onPressed});

  @override
  State<PhotoIcon> createState() => _PhotoIconState();
}

class _PhotoIconState extends State<PhotoIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade500,
          width: 1.0,
>>>>>>> 16fa91e851bdf2ed13bd790af1bc1da208bea451
        ),
      ),
<<<<<<< HEAD
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
=======
      child: IconButton(
        icon: Icon(Icons.add),
        onPressed: widget.onPressed,

        // Adicione a lógica para escolher uma foto aqui
>>>>>>> 16fa91e851bdf2ed13bd790af1bc1da208bea451
      ),
    );
  }
}
