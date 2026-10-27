import 'package:flutter/material.dart';

import 'package:catalogo/ui/core/ui/etiqueta_catalogo.dart';
import 'package:catalogo/ui/core/ui/texto_jerarquico.dart';
import 'package:catalogo/ui/core/ui/texto_resumen.dart';

class TextEjemplosPantalla extends StatelessWidget {
  const TextEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Text')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          EtiquetaCatalogo(texto: 'Ruta de la cascada'),
          SizedBox(height: 16),
          EtiquetaCatalogo(
            texto: 'Ruta de la cascada',
            variante: VarianteEtiqueta.normal,
          ),
          TextoJerarquico(texto: 'Ruta del río', tipo: TipoTexto.titulo),
          TextoJerarquico(texto: 'Ruta del río', tipo: TipoTexto.cuerpo),
          Center(
            child: SizedBox(
              width: 220,
              child: TextoResumen(
                texto: 'Un recorrido largo que permite comparar las líneas visibles.',
                lineas: 1,
                centrado: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
