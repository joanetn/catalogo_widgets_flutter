import 'package:catalogo/ui/core/ui/boton_aviso.dart';
import 'package:catalogo/ui/core/ui/seccion_catalogo.dart';
import 'package:flutter/material.dart';

class ScaffoldEjemplosPantalla extends StatelessWidget {
  const ScaffoldEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Scaffold y AppBar')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SeccionCatalogo(
            nombre: 'Scaffold y AppBar',
            descripcion:
                'Scaffold estructura una pantalla y AppBar muestra su barra '
                'superior. BotonAviso demuestra un mensaje temporal.',
            parametros:
                'PantallaDemostracion necesita titulo y contenido. Sus '
                'variantes destacada y centrarTitulo valen false. BotonAviso '
                'requiere etiqueta y mensaje; flotante vale false y segundos 3.',
            codigo:
                "BotonAviso(\n"
                "  etiqueta: 'Aviso',\n"
                "  mensaje: 'Guardado',\n"
                '  flotante: true,\n'
                '  segundos: 5,\n'
                ')',
            demostraciones: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BotonAviso(
                  etiqueta: 'Aviso fijo',
                  mensaje: 'Primer mensaje',
                ),
                const SizedBox(height: 12),
                BotonAviso(
                  etiqueta: 'Aviso flotante',
                  mensaje: 'Segundo mensaje',
                  flotante: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
