import 'categoria.dart';
import 'punto_recogida.dart';

enum EstadoArticulo { disponible, prestado, mantenimiento }

class Articulo {
  const Articulo({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.categoria,
    required this.puntoRecogida,
    required this.estado,
    required this.diasPrestamo,
    required this.recomendaciones,
  });
  final String id;
  final String nombre;
  final String descripcion;
  final Categoria categoria;
  final PuntoRecogida puntoRecogida;
  final EstadoArticulo estado;
  final int diasPrestamo;
  final String recomendaciones;
}
