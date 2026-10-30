import 'package:catalogo/ui/core/ui/imagen_remota.dart';
import 'package:catalogo/ui/core/ui/imagen_ruta.dart';
import 'package:catalogo/ui/core/ui/seccion_catalogo.dart';
import 'package:flutter/material.dart';

class ImageEjemplosPantalla extends StatelessWidget {
  const ImageEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Image')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SeccionCatalogo(
            nombre: 'ImagenRuta',
            descripcion:
                'Carga una imagen incluida en los assets y añade una '
                'descripción accesible.',
            parametros:
                'rutaAsset y descripcion son obligatorios. panoramica vale '
                'false; con true usa un formato más ancho. Declara el asset '
                'en pubspec.yaml.',
            codigo:
                "ImagenRuta(\n"
                "  rutaAsset: 'assets/images/chat.png',\n"
                "  descripcion: 'Imagen de chat',\n"
                '  panoramica: true,\n'
                ')',
            demostraciones: const Column(
              children: [
                ImagenRuta(
                  rutaAsset: 'assets/images/chat.png',
                  descripcion: 'Claude',
                ),
                SizedBox(height: 16),
                ImagenRuta(
                  rutaAsset: 'assets/images/chat.png',
                  descripcion: 'Claude',
                  panoramica: true,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          SeccionCatalogo(
            nombre: 'ImagenRemota',
            descripcion:
                'Descarga una imagen desde una URL e indica carga o error.',
            parametros:
                'url es obligatorio y ajuste vale BoxFit.cover. Una imagen '
                'informativa necesita descripcion; usa decorativa: true si '
                'no aporta información.',
            codigo:
                "ImagenRemota(\n"
                "  url: 'https://ejemplo.com/ruta.jpg',\n"
                "  descripcion: 'Fotografía de una ruta',\n"
                ')',
            demostraciones: Column(
              children: [
                ImagenRemota(
                  url: 'https://example.invalid/imagen.jpg',
                  descripcion: 'Fotografía de una ruta',
                ),
                const SizedBox(height: 16),
                ImagenRemota(
                  url:
                      'https://imgs.search.brave.com/c575Y5quQR0tKUsAgYb8rkRT8WI8ch2k55AAHL8nTYo/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9kYXJ0/LTI1MTY5MTUuanBn',
                  descripcion: 'Fotografía de una ruta',
                  decorativa: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
