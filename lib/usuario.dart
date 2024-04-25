import 'package:flutter/material.dart';
import 'package:formativa_pedro/usuario.dart';
import 'package:http/http.dart' as http; // metodo que permite interação com api
import 'dart:convert';

class Usuario extends StatefulWidget {
  const Usuario({super.key});

  @override
  State<Usuario> createState() => _UsuarioState();
}

class _UsuarioState extends State<Usuario> {
  String url = 'http://10.109.83.9:3000/usuario';
  _gti() {
    Map<String, dynamic> produto = {"nome": "${c1.text}"};

    http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(produto),
    );
  }
  TextEditingController c1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuarios'),
        


      ),
      body: Column(
        children: [
          Text('Digite as Informações desejadas'),
          TextField(keyboardType: TextInputType.name,
          controller: c1,
          ),
          ElevatedButton(onPressed: _gti , child: Text("Enviar"))
        ],
      ),
    );;
  }
}

