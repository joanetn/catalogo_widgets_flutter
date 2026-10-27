import 'package:flutter/material.dart';

class TextoResumen extends StatelessWidget {
  final String texto;
  final int lineas;
  final bool centrado;

  const TextoResumen({
    super.key,
    required this.texto,
    this.lineas = 2,
    this.centrado = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      maxLines: lineas,
      overflow: TextOverflow.ellipsis,
      textAlign: centrado ? TextAlign.center : TextAlign.left,
    );
  }
}
