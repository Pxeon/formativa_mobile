import 'package:flutter/material.dart';

class Informações extends StatefulWidget {
  const Informações({super.key});

  @override
  State<Informações> createState() => _InformaçõesState();
}

class _InformaçõesState extends State<Informações> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InformaçõesApi'),
      ),
      body: Column(
        children: [
          Text('Exibição das informações salvas da API'),
        ],
      ),
    );
  }
}