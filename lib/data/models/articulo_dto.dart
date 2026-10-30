import 'package:catalogo/data/models/categoria_dto.dart';
import 'package:catalogo/data/models/punto_recogida_dto.dart';

class ArticuloDto {
  const ArticuloDto({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.categoria,
    required this.puntoRecogida,
    required this.codigoEstado,
    required this.horasPrestamo,
    required this.recomendaciones,
  });
  final String id;
  final String nombre;
  final String descripcion;
  final CategoriaDto categoria;
  final PuntoRecogidaDto puntoRecogida;
  final String codigoEstado;
  final int horasPrestamo;
  final String recomendaciones;
}
