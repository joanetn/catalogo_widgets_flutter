import 'package:flutter/material.dart';

class ImagenRemota extends StatelessWidget {
  final String url;
  final BoxFit ajuste;
  final bool decorativa;
  final String? descripcion;

  ImagenRemota({
    super.key,
    required this.url,
    this.ajuste = BoxFit.cover,
    this.decorativa = false,
    this.descripcion,
  }) : assert(
         decorativa || (descripcion != null && descripcion.trim().isNotEmpty),
         'Las imagenes informativas requieren una descripcion no vacia',
       );

  @override
  Widget build(BuildContext context) {
    final contenido = SizedBox(
      height: 180,
      width: double.infinity,
      child: Image.network(
        url,
        fit: ajuste,
        excludeFromSemantics: true,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }

          return const Center(child: CircularProgressIndicator());
        },
        errorBuilder: (context, error, stackTrace) {
          return const Center(child: Icon(Icons.broken_image_outlined));
        },
      ),
    );

    if (decorativa) {
      return ExcludeSemantics(child: contenido);
    }

    return Semantics(image: true, label: descripcion, child: contenido);
  }
}
