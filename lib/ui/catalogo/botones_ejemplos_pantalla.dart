import 'package:catalogo/ui/core/ui/boton_accion.dart';
import 'package:catalogo/ui/core/ui/boton_con_icono.dart';
import 'package:catalogo/ui/core/ui/seccion_catalogo.dart';
import 'package:flutter/material.dart';

class BotonesEjemplosPantalla extends StatelessWidget {
  const BotonesEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Botones')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SeccionCatalogo(
            nombre: 'BotonAccion',
            descripcion:
                'Ejecuta una acción principal mediante un botón relleno.',
            parametros:
                'texto es obligatorio. onPressed es opcional: recibe un '
                'VoidCallback o null para desactivar el botón. destacado vale false.',
            codigo:
                "BotonAccion(\n"
                "  texto: 'Comenzar',\n"
                '  destacado: true,\n'
                '  onPressed: () => debugPrint(\'Comenzar\'),\n'
                ')',
            demostraciones: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BotonAccion(
                  texto: 'Comenzar',
                  destacado: true,
                  onPressed: () => debugPrint('Comenzar desde el catálogo'),
                ),
                const SizedBox(height: 12),
                const BotonAccion(texto: 'No disponible'),
              ],
            ),
          ),
          const SizedBox(height: 24),
          SeccionCatalogo(
            nombre: 'BotonConIcono',
            descripcion:
                'Combina una etiqueta y un icono para acciones como guardar.',
            parametros:
                'texto e icono son obligatorios. onPressed es opcional. '
                'secundario vale false; true usa un botón relleno.',
            codigo:
                "BotonConIcono(\n"
                "  texto: 'Guardar',\n"
                '  icono: Icons.bookmark_border,\n'
                '  onPressed: guardar,\n'
                '  secundario: true,\n'
                ')',
            demostraciones: BotonConIcono(
              texto: 'Guardar',
              icono: Icons.bookmark_border,
              secundario: true,
              onPressed: () => debugPrint('Guardar desde el catálogo'),
            ),
          ),
        ],
      ),
    );
  }
}
