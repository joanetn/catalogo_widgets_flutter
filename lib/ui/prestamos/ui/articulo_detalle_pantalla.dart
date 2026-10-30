import 'package:flutter/material.dart';

import '../../../domain/models/articulo.dart';
import 'tarjeta_articulo.dart' show etiquetaEstado;

class ArticuloDetallePantalla extends StatelessWidget {
  const ArticuloDetallePantalla({super.key, required this.articulo});
  final Articulo articulo;

  @override
  Widget build(BuildContext context) {
    final punto = articulo.puntoRecogida;
    return Scaffold(
      appBar: AppBar(title: const Text('Ficha del artículo')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            articulo.nombre,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text('Categoría: ${articulo.categoria.nombre}'),
          Text('Estado: ${etiquetaEstado(articulo.estado)}'),
          const Divider(),
          Text(articulo.descripcion),
          const SizedBox(height: 16),
          Text(
            'Condiciones del préstamo',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text('Plazo máximo: ${articulo.diasPrestamo} días'),
          Text(articulo.recomendaciones),
          const Divider(),
          Text(
            'Punto de recogida',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(punto.nombre),
          Text(punto.direccion),
          Text(punto.horario),
          const SizedBox(height: 16),
          const Text(
            'Consulta informativa. El préstamo se solicita presencialmente en el centro.',
          ),
        ],
      ),
    );
  }
}
