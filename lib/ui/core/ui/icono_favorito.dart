import 'package:flutter/material.dart';

class IconoFavorito extends StatelessWidget {
  final bool marcado;
  final double tamano;

  const IconoFavorito({super.key, this.marcado = false, this.tamano = 32});

  @override
  Widget build(BuildContext context) {
    return Icon(
      marcado ? Icons.favorite : Icons.favorite_border,
      color: Colors.red,
      size: tamano,
    );
  }
}
