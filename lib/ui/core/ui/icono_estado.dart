import 'package:flutter/material.dart';

enum EstadoRuta { pendiente, completada, error }

class IconoEstado extends StatelessWidget {
  final EstadoRuta estado;
  final double tamano;

  const IconoEstado({super.key, required this.estado, this.tamano = 32});

  @override
  Widget build(BuildContext context) {
    return switch (estado) {
      EstadoRuta.completada => Icon(
        Icons.done,
        color: Colors.green,
        size: tamano,
      ),
      EstadoRuta.pendiente => Icon(
        Icons.pending_actions_rounded,
        color: Colors.orange,
        size: tamano,
      ),
      EstadoRuta.error => Icon(Icons.error, color: Colors.red, size: tamano),
    };
  }
}
