import 'package:flutter/material.dart';

enum VarianteEtiqueta { normal, destacada, aviso }

class EtiquetaCatalogo extends StatelessWidget {
  final String texto;
  final VarianteEtiqueta variante;

  const EtiquetaCatalogo({
    super.key,
    required this.texto,
    this.variante = VarianteEtiqueta.normal,
  });

  @override
  Widget build(BuildContext context) {
    final estilo = switch (variante) {
      VarianteEtiqueta.normal => const TextStyle(fontSize: 16),
      VarianteEtiqueta.destacada => const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      VarianteEtiqueta.aviso => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.deepOrange,
      ),
    };

    return Text(texto, style: estilo);
  }
}
