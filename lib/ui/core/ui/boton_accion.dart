import 'package:flutter/material.dart';

class BotonAccion extends StatelessWidget {
  final String texto;
  final VoidCallback? onPressed;
  final bool destacado;

  const BotonAccion({
    super.key,
    required this.texto,
    this.onPressed,
    this.destacado = false,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: destacado ? Colors.green : Colors.grey,
        foregroundColor: destacado ? Colors.white : Colors.black,
        padding: destacado
            ? const EdgeInsets.symmetric(horizontal: 24, vertical: 16)
            : const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      child: Text(texto),
    );
  }
}
