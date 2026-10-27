import 'package:catalogo/ui/core/ui/imagen_remota.dart';
import 'package:catalogo/ui/core/ui/imagen_ruta.dart';
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
          ImagenRuta(
            rutaAsset: 'assets/images/chat.png',
            descripcion: 'Claude',
          ),
          ImagenRuta(
            rutaAsset: 'assets/images/chat.png',
            descripcion: 'Claude',
            panoramica: true,
          ),
          ImagenRemota(
            url: 'https://example.invalid/imagen.jpg',
            descripcion: 'Fotografía de una ruta',
          ),
          ImagenRemota(
            url: 'https://imgs.search.brave.com/c575Y5quQR0tKUsAgYb8rkRT8WI8ch2k55AAHL8nTYo/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9kYXJ0/LTI1MTY5MTUuanBn',
            descripcion: 'Fotografía de una ruta',
            decorativa: true,
          ),
        ],
      ),
    );
  }
}
