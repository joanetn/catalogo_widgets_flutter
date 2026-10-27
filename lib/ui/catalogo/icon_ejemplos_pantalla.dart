import 'package:catalogo/ui/core/ui/icono_estado.dart';
import 'package:catalogo/ui/core/ui/icono_favorito.dart';
import 'package:flutter/material.dart';

class IconEjemplosPantalla extends StatelessWidget {
  const IconEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Icono')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          IconoEstado(estado: EstadoRuta.pendiente),
          IconoEstado(estado: EstadoRuta.completada, tamano: 48),
          IconoEstado(estado: EstadoRuta.error),
          IconoFavorito(),
          IconoFavorito(marcado: true),
        ],
      ),
    );
  }
}
