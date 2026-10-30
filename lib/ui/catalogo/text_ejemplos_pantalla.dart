import 'package:flutter/material.dart';

import 'package:catalogo/ui/core/ui/etiqueta_catalogo.dart';
import 'package:catalogo/ui/core/ui/seccion_catalogo.dart';
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
        children: [
          SeccionCatalogo(
            nombre: 'EtiquetaCatalogo',
            descripcion:
                'Muestra una etiqueta de texto con un estilo sencillo para '
                'identificar contenido.',
            parametros:
                'texto es obligatorio. variante es opcional y vale '
                'VarianteEtiqueta.normal; también puede ser destacada o aviso.',
            codigo:
                "EtiquetaCatalogo(\n"
                "  texto: 'Ruta de la cascada',\n"
                "  variante: VarianteEtiqueta.destacada,\n"
                ')',
            demostraciones: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EtiquetaCatalogo(texto: 'Ruta de la cascada'),
                SizedBox(height: 16),
                EtiquetaCatalogo(
                  texto: 'Ruta de la cascada',
                  variante: VarianteEtiqueta.destacada,
                ),
                SizedBox(height: 16),
                EtiquetaCatalogo(
                  texto: 'Aviso importante',
                  variante: VarianteEtiqueta.aviso,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          SeccionCatalogo(
            nombre: 'TextoJerarquico',
            descripcion:
                'Presenta texto con una jerarquía visual adecuada para títulos, '
                'subtítulos o cuerpo.',
            parametros:
                'texto es obligatorio. tipo es opcional y por defecto es '
                'TipoTexto.cuerpo; selecciona titulo, subtitulo o cuerpo.',
            codigo:
                "TextoJerarquico(\n"
                "  texto: 'Ruta del río',\n"
                "  tipo: TipoTexto.titulo,\n"
                ')',
            demostraciones: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextoJerarquico(
                  texto: 'Ruta del río',
                  tipo: TipoTexto.titulo,
                ),
                SizedBox(height: 20),
                TextoJerarquico(
                  texto: 'Ruta del río',
                  tipo: TipoTexto.subtitulo,
                ),
                SizedBox(height: 20),
                TextoJerarquico(texto: 'Ruta del río'),
                SizedBox(height: 20),
                Text(
                  'Mismo contenido, distinta jerarquía visual',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          SeccionCatalogo(
            nombre: 'TextoResumen',
            descripcion: 'Resume un texto limitando sus líneas.',
            parametros:
                'texto es obligatorio. lineas vale 2 y centrado vale false; '
                'usa centrado: true para alinear el resumen.',
            codigo:
                "TextoResumen(\n"
                "  texto: 'Un recorrido largo...',\n"
                '  lineas: 1,\n'
                '  centrado: true,\n'
                ')',
            demostraciones: Center(
              child: SizedBox(
                width: 220,
                child: TextoResumen(
                  texto:
                      'Un recorrido largo que permite comparar las líneas '
                      'visibles.',
                  lineas: 1,
                  centrado: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
