import 'package:flutter/material.dart';

class InformacionComponente extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String parametros;
  final String codigo;

  const InformacionComponente({
    super.key,
    required this.nombre,
    required this.descripcion,
    required this.parametros,
    required this.codigo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.blueGrey.shade100),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nombre,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              descripcion,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.blueGrey.shade600,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Cómo utilizarlo',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              parametros,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.blueGrey.shade600,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Ejemplo de uso',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xff202631),
                borderRadius: BorderRadius.circular(6),
              ),
              child: SelectableText(
                codigo,
                style: const TextStyle(
                  fontFamily: 'monospace',
                  fontFamilyFallback: ['Courier New'],
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
