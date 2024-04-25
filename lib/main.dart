import 'package:flutter/material.dart';
 
import 'dart:convert';

import 'package:formativa_pedro/usuario.dart'; // metodo que permite conversão de dado

void main() {
  runApp(MaterialApp(
    home: Telaprincipal(),
  ));
}

class Telaprincipal extends StatefulWidget {
  const Telaprincipal({super.key});

  @override
  State<Telaprincipal> createState() => _TelaprincipalState();
}

class _TelaprincipalState extends State<Telaprincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marea'),
      ),
      body: Column(
        children: [
          Text('Login'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(),
          ),
          Text('Senha'),
          TextFormField(),
          ElevatedButton(onPressed:(){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> Usuario()));
          }, child: Text('Login'))
        ],
      ),
    );

  }
}