import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StoryStock(),
  ));
}

class StoryStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados Pessoais'),
      ),
      body: PersonalDataScreen(),
    );
  }
}

class PersonalDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('lib/images/userr.png'),
          ),
          SizedBox(height: 20),
          PersonalDataField(
            label: 'Nome',
            value: 'Guilherme Henrique',
          ),
          PersonalDataField(
            label: 'E-mail',
            value: 'guilherme@gmail.com',
          ),
          PersonalDataField(
            label: 'CPF',
            value: '000.000.000-00',
          ),
          PersonalDataField(
            label: 'Nascimento',
            value: '12/08/XXXX',
          ),
        ],
      ),
    );
  }
}

class PersonalDataField extends StatelessWidget {
  final String label;
  final String value;

  const PersonalDataField({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$label:',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          Row(
            children: [
              Text(
                value,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(width: 10),
              Icon(Icons.edit, color: Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}
