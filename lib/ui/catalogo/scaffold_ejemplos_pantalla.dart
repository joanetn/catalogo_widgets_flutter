import 'package:catalogo/ui/core/ui/boton_aviso.dart';
import 'package:catalogo/ui/core/ui/pantalla_demostracion.dart';
import 'package:flutter/material.dart';

class ScaffoldEjemplosPantalla extends StatelessWidget {
  const ScaffoldEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Scaffold')),
      body: PantallaDemostracion(
        titulo: 'Variantes de pantalla',
        destacada: true,
        centrarTitulo: true,
        contenido: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            BotonAviso(etiqueta: 'Aviso fijo', mensaje: 'Primer mensaje'),
            BotonAviso(
              etiqueta: 'Aviso flotante',
              mensaje: 'Segundo mensaje',
              flotante: true,
            ),
          ],
        ),
      ),
    );
  }
}
