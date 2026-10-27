import 'package:flutter/material.dart';

enum TipoTexto { titulo, subtitulo, cuerpo }

class TextoJerarquico extends StatelessWidget {
  final String texto;
  final TipoTexto tipo;

  const TextoJerarquico({
    super.key,
    required this.texto,
    this.tipo = TipoTexto.cuerpo,
  });

  @override
  Widget build(BuildContext context) {
    final estilo = switch (tipo) {
      TipoTexto.titulo => const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      TipoTexto.subtitulo => const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      TipoTexto.cuerpo => const TextStyle(fontSize: 16),
    };

    return Text(texto, style: estilo);
  }
}
