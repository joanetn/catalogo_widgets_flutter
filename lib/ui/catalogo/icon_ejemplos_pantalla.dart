import 'package:catalogo/ui/core/ui/icono_estado.dart';
import 'package:catalogo/ui/core/ui/icono_favorito.dart';
import 'package:catalogo/ui/core/ui/seccion_catalogo.dart';
import 'package:flutter/material.dart';

class IconEjemplosPantalla extends StatelessWidget {
  const IconEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Icon')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SeccionCatalogo(
            nombre: 'IconoEstado',
            descripcion:
                'Representa visualmente el estado de una ruta con un icono '
                'y un color.',
            parametros:
                'estado es obligatorio: pendiente, completada o error. '
                'tamano vale 32.',
            codigo:
                'IconoEstado(\n'
                '  estado: EstadoRuta.completada,\n'
                '  tamano: 48,\n'
                ')',
            demostraciones: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconoEstado(estado: EstadoRuta.pendiente),
                IconoEstado(estado: EstadoRuta.completada, tamano: 48),
                IconoEstado(estado: EstadoRuta.error),
              ],
            ),
          ),
          const SizedBox(height: 24),
          SeccionCatalogo(
            nombre: 'IconoFavorito',
            descripcion: 'Indica si un elemento está marcado como favorito.',
            parametros:
                'marcado vale false y tamano vale 32. Usa marcado: true '
                'para mostrar la variante seleccionada.',
            codigo:
                'IconoFavorito(\n'
                '  marcado: true,\n'
                '  tamano: 40,\n'
                ')',
            demostraciones: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconoFavorito(),
                IconoFavorito(marcado: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
