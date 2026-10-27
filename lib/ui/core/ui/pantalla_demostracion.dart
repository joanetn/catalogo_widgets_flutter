import 'package:flutter/material.dart';

class PantallaDemostracion extends StatelessWidget {
  final String titulo;
  final Widget contenido;
  final bool destacada;
  final bool centrarTitulo;

  const PantallaDemostracion({
    super.key,
    required this.titulo,
    required this.contenido,
    this.destacada = false,
    this.centrarTitulo = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titulo), centerTitle: centrarTitulo),
      body: contenido,
    );
  }
}
