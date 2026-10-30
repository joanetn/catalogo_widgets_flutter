import 'package:flutter/material.dart';

import 'informacion_componente.dart';

class SeccionCatalogo extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String parametros;
  final String codigo;
  final Widget demostraciones;

  const SeccionCatalogo({
    super.key,
    required this.nombre,
    required this.descripcion,
    required this.parametros,
    required this.codigo,
    required this.demostraciones,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final esAmplia = constraints.maxWidth >= 800;
        final informacion = InformacionComponente(
              nombre: nombre,
              descripcion: descripcion,
              parametros: parametros,
              codigo: codigo,
            );
        final demostracionesCard = _TarjetaDemostraciones(
          contenido: demostraciones,
        );

        return esAmplia
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 5, child: informacion),
                  const SizedBox(width: 18),
                  Expanded(flex: 5, child: demostracionesCard),
                ],
              )
            : Column(
                children: [
                  informacion,
                  const SizedBox(height: 18),
                  demostracionesCard,
                ],
              );
      },
    );
  }
}

class _TarjetaDemostraciones extends StatelessWidget {
  final Widget contenido;

  const _TarjetaDemostraciones({required this.contenido});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.blueGrey.shade100),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Demostraciones',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 18),
            contenido,
          ],
        ),
      ),
    );
  }
}
