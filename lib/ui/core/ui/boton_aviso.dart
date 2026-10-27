import 'package:flutter/material.dart';

class BotonAviso extends StatelessWidget {
  final String etiqueta;
  final String mensaje;
  final bool flotante;
  final int segundos;

  const BotonAviso({
    super.key,
    required this.etiqueta,
    required this.mensaje,
    this.flotante = false,
    this.segundos = 3,
  }) : assert(segundos > 0, 'La duracion debe ser positiva');

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(mensaje),
            duration: Duration(seconds: segundos),
            behavior: flotante
                ? SnackBarBehavior.floating
                : SnackBarBehavior.fixed,
          ),
        );
      },
      child: Text(etiqueta),
    );
  }
}
