import 'package:flutter/material.dart';

import '../../../data/repositories/articulos_repository.dart';
import '../view_models/prestamos_view_model.dart';
import 'articulo_detalle_pantalla.dart';
import 'tarjeta_articulo.dart';

class EjemploDatosPantalla extends StatefulWidget {
  const EjemploDatosPantalla({super.key, required this.repository});
  final ArticulosRepository repository;

  @override
  State<EjemploDatosPantalla> createState() => _EjemploDatosPantallaState();
}

class _EjemploDatosPantallaState extends State<EjemploDatosPantalla> {
  late final PrestamosViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = PrestamosViewModel(repository: widget.repository);
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplo con datos')),
      body: ListenableBuilder(
        listenable: _viewModel,
        builder: (context, child) {
          final visibles = _viewModel.visibles;
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text(
                'Biblioteca de objetos del barrio',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                'Mostrando ${visibles.length} de ${_viewModel.total} artículos',
              ),
              const SizedBox(height: 12),
              FilledButton.icon(
                onPressed: _viewModel.alternarFiltro,
                icon: const Icon(Icons.filter_alt_outlined),
                label: Text(
                  _viewModel.soloDisponibles
                      ? 'Mostrar todos'
                      : 'Solo disponibles',
                ),
              ),
              const SizedBox(height: 12),
              if (visibles.isEmpty)
                const Text('No hay artículos para este filtro.'),
              for (final articulo in visibles)
                TarjetaArticulo(
                  key: ValueKey(articulo.id),
                  articulo: articulo,
                  onVerDetalle: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (context) =>
                            ArticuloDetallePantalla(articulo: articulo),
                      ),
                    );
                  },
                ),
            ],
          );
        },
      ),
    );
  }
}
