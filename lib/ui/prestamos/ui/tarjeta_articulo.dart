import 'package:flutter/material.dart';

import '../../../domain/models/articulo.dart';

String etiquetaEstado(EstadoArticulo estado) => switch (estado) {
  EstadoArticulo.disponible => 'Disponible',
  EstadoArticulo.prestado => 'Prestado',
  EstadoArticulo.mantenimiento => 'En mantenimiento',
};

class TarjetaArticulo extends StatelessWidget {
  const TarjetaArticulo({
    super.key,
    required this.articulo,
    required this.onVerDetalle,
  });
  final Articulo articulo;
  final VoidCallback onVerDetalle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(child: Text(articulo.categoria.siglas)),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        articulo.nombre,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(articulo.categoria.nombre),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(articulo.descripcion),
            const Divider(),
            Text('Estado: ${etiquetaEstado(articulo.estado)}'),
            const SizedBox(height: 8),
            OutlinedButton.icon(
              onPressed: onVerDetalle,
              icon: const Icon(Icons.info_outline),
              label: const Text('Ver detalle'),
            ),
          ],
        ),
      ),
    );
  }
}
