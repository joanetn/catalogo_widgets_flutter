import 'package:flutter/foundation.dart';

import '../../../data/repositories/articulos_repository.dart';
import '../../../domain/models/articulo.dart';

class PrestamosViewModel extends ChangeNotifier {
  PrestamosViewModel({required ArticulosRepository repository})
    : _repository = repository;

  final ArticulosRepository _repository;
  bool _soloDisponibles = false;

  bool get soloDisponibles => _soloDisponibles;
  int get total => _repository.obtenerTodos().length;
  List<Articulo> get visibles => List<Articulo>.unmodifiable(
    _repository.obtenerTodos().where(
      (articulo) =>
          !_soloDisponibles || articulo.estado == EstadoArticulo.disponible,
    ),
  );

  void alternarFiltro() {
    _soloDisponibles = !_soloDisponibles;
    notifyListeners();
  }
}
