import 'package:flutter/material.dart';

class ImagenRuta extends StatelessWidget {
  final String rutaAsset;
  final bool panoramica;
  final String descripcion;

  const ImagenRuta({
    super.key,
    required this.rutaAsset,
    this.panoramica = false,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        rutaAsset,
        width: panoramica ? 300 : 240,
        height: panoramica ? 120 : 180,
        fit: BoxFit.cover,
        semanticLabel: descripcion,
      ),
    );
  }
}
