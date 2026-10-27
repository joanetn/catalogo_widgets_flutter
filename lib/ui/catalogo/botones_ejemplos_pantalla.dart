import 'package:catalogo/ui/core/ui/boton_accion.dart';
import 'package:catalogo/ui/core/ui/boton_con_icono.dart';
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
          BotonAccion(
            texto: 'Comenzar',
            destacado: true,
            onPressed: () {
              debugPrint('Comenzar desde el catálogo');
            },
          ),
          const BotonAccion(texto: 'No disponible', onPressed: null),
          BotonConIcono(
            texto: 'Guardar',
            icono: Icons.bookmark_border,
            secundario: true,
            onPressed: () {
              debugPrint('Guardar desde el catálogo');
            },
          ),
        ],
      ),
    );
  }
}
