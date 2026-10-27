import 'package:flutter/material.dart';

class BotonConIcono extends StatelessWidget {
  final String texto;
  final IconData icono;
  final VoidCallback? onPressed;
  final bool secundario;

  const BotonConIcono({
    super.key,
    required this.texto,
    required this.icono,
    this.onPressed,
    this.secundario = false,
  });

  @override
  Widget build(BuildContext context) {
    return secundario
        ? FilledButton.icon(
            onPressed: onPressed,
            icon: Icon(icono),
            label: Text(texto),
          )
        : OutlinedButton.icon(
            onPressed: onPressed,
            label: Text(texto),
            icon: Icon(icono),
          );
  }
}
