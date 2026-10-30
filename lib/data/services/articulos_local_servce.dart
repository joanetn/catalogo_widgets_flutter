import 'package:catalogo/data/models/articulo_dto.dart';
import 'package:catalogo/data/models/categoria_dto.dart';
import 'package:catalogo/data/models/punto_recogida_dto.dart';

class ArticulosLocalService {
  const ArticulosLocalService();

  List<ArticuloDto> leer() {
    const bricolaje = CategoriaDto(id: 'c1', nombre: 'Bricolaje', siglas: 'BR');
    const hogar = CategoriaDto(id: 'c2', nombre: 'Hogar', siglas: 'HO');
    const ocio = CategoriaDto(id: 'c3', nombre: 'Ocio', siglas: 'OC');
    const centro = PuntoRecogidaDto(
      id: 'p1',
      nombre: 'Centro vecinal La Plaza',
      direccion: 'Calle Mayor, 12',
      horario: 'Lunes a viernes, de 17 a 20 h',
    );
    const biblioteca = PuntoRecogidaDto(
      id: 'p2',
      nombre: 'Biblioteca del Parque',
      direccion: 'Avenida del Parque, 8',
      horario: 'Sábados, de 10 a 13 h',
    );
    return const [
      ArticuloDto(
        id: 'a1',
        nombre: 'Taladro percutor',
        descripcion:
            'Taladro con maletín y juego de brocas para pequeñas reparaciones.',
        categoria: bricolaje,
        puntoRecogida: centro,
        codigoEstado: 'DISP',
        horasPrestamo: 72,
        recomendaciones:
            'Usar gafas de protección y devolver las brocas en su estuche.',
      ),
      ArticuloDto(
        id: 'a2',
        nombre: 'Máquina de coser',
        descripcion:
            'Máquina portátil para arreglos de ropa y proyectos sencillos.',
        categoria: hogar,
        puntoRecogida: centro,
        codigoEstado: 'PREST',
        horasPrestamo: 168,
        recomendaciones:
            'Incluye pedal y manual. Devolver sin hilos en la bobina.',
      ),
      ArticuloDto(
        id: 'a3',
        nombre: 'Proyector',
        descripcion:
            'Proyector con conexión HDMI para una sesión de cine en grupo.',
        categoria: ocio,
        puntoRecogida: biblioteca,
        codigoEstado: 'DISP',
        horasPrestamo: 48,
        recomendaciones:
            'Transportar en su funda y dejar enfriar antes de guardarlo.',
      ),
      ArticuloDto(
        id: 'a4',
        nombre: 'Tienda de campaña',
        descripcion:
            'Tienda para dos personas con doble techo y bolsa de transporte.',
        categoria: ocio,
        puntoRecogida: biblioteca,
        codigoEstado: 'MANT',
        horasPrestamo: 120,
        recomendaciones:
            'Devolver limpia y completamente seca, con todas las piquetas.',
      ),
    ];
  }
}
