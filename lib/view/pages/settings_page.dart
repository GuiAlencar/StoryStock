import 'package:flutter/material.dart';
import 'package:story_stock/view/pages/change_address.dart';
import 'package:story_stock/view/pages/change_password.dart';
import 'package:story_stock/view/pages/delete_account.dart';
import 'package:story_stock/view/pages/personal_data.dart';
import 'package:story_stock/view/pages/register_credit_card.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notificationsEnabled =
      true; // Para controlar se as notificações estão ativadas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Dados Pessoais'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => (PersonalDataScreen())));
              // Navegar para a tela
              // de dados pessoais
            },
          ),
          ListTile(
            title: Text('Alterar Senha'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => (ChangePasswordScreen())));
              // Navegar para a tela de alteração de senha
            },
          ),
          ListTile(
            title: Text('Cartão de Crédito'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => (RegisterCreditCardScreen())));
              // Navegar para a tela de cartão de crédito
            },
          ),
          ListTile(
            title: Text('Alterar Endereço'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => (ChangeAddressScreen())));
              // Navegar para a tela de alteração de endereço
            },
          ),
          ListTile(
            title: Text('Deletar Conta'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => (DeleteAccountScreen())));
              // Navegar para a tela de exclusão de conta
            },
          ),
          SwitchListTile(
            title: Text('Permitir Notificações'),
            value: notificationsEnabled,
            onChanged: (value) {
              setState(() {
                notificationsEnabled = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingsPage(),
  ));
}
