import 'package:catalogo/data/services/articulos_local_servce.dart';

import '../../domain/models/articulo.dart';
import '../../domain/models/categoria.dart';
import '../../domain/models/punto_recogida.dart';
import '../models/articulo_dto.dart';

class ArticulosRepository {
  ArticulosRepository({required ArticulosLocalService service}) {
    final datos = service.leer();
    final ids = datos.map((articulo) => articulo.id).toSet();
    if (ids.length != datos.length) {
      throw StateError('Hay identificadores de artículo duplicados');
    }
    _articulos = List<Articulo>.unmodifiable(datos.map(_aDominio));
  }

  late final List<Articulo> _articulos;
  List<Articulo> obtenerTodos() => _articulos;

  static Articulo _aDominio(ArticuloDto dto) {
    final estado = switch (dto.codigoEstado) {
      'DISP' => EstadoArticulo.disponible,
      'PREST' => EstadoArticulo.prestado,
      'MANT' => EstadoArticulo.mantenimiento,
      _ => throw FormatException('Estado desconocido: ${dto.codigoEstado}'),
    };
    if (dto.horasPrestamo <= 0 || dto.horasPrestamo % 24 != 0) {
      throw FormatException(
        'El plazo debe ser un número positivo de días completos',
      );
    }
    return Articulo(
      id: dto.id,
      nombre: dto.nombre,
      descripcion: dto.descripcion,
      categoria: Categoria(
        id: dto.categoria.id,
        nombre: dto.categoria.nombre,
        siglas: dto.categoria.siglas,
      ),
      puntoRecogida: PuntoRecogida(
        id: dto.puntoRecogida.id,
        nombre: dto.puntoRecogida.nombre,
        direccion: dto.puntoRecogida.direccion,
        horario: dto.puntoRecogida.horario,
      ),
      estado: estado,
      diasPrestamo: dto.horasPrestamo ~/ 24,
      recomendaciones: dto.recomendaciones,
    );
  }
}
