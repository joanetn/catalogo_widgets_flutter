# Catálogo de widgets Flutter

Este README documenta únicamente la aplicación del catálogo de widgets.

## Ejecución

Desde la carpeta del proyecto:

```bash
flutter pub get
flutter run
```

También se puede seleccionar un dispositivo concreto:

```bash
flutter devices
flutter run -d <id-del-dispositivo>
```

## Comprobación

Para comprobar que el código del catálogo mantiene el formato y no contiene
errores de análisis:

```bash
dart format lib
flutter analyze
```

Comprobación funcional:

1. Abrir la aplicación y entrar en cada sección desde el listado principal.
2. Confirmar que cada sección se puede desplazar verticalmente.
3. Comprobar que cada tarjeta muestra descripción, parámetros, valores
   predeterminados y ejemplo de código seleccionable.
4. Probar las variantes visibles de texto, iconos, botones e imágenes.
5. Pulsar los botones y comprobar que ejecutan su callback o muestran el
   aviso correspondiente.
6. Reducir el ancho de la ventana y verificar que la información y las
   demostraciones pasan de dos columnas a una columna.
7. En `TextoResumen`, comprobar que el texto queda limitado y termina en
   puntos suspensivos cuando no cabe.

## Lista de verificación de mejoras

- [x] Cada sección del catálogo incluye información junto a sus demostraciones.
- [x] La información se presenta en tarjetas con una composición de columnas.
- [x] Se explica para qué sirve cada componente.
- [x] Se documentan los parámetros obligatorios y opcionales.
- [x] Se indican los valores predeterminados.
- [x] Se explican las variantes y cómo seleccionarlas.
- [x] Se incluyen ejemplos breves de uso en Dart.
- [x] Los ejemplos de código se muestran con `SelectableText` y fuente
  monoespaciada.
- [x] Las demostraciones reales aparecen debajo o junto a la información.
- [x] Las pantallas de ejemplos usan `ListView` para permitir el desplazamiento.
- [x] Los callbacks de los botones se muestran con `VoidCallback`.
- [x] Las imágenes informativas incluyen descripción.
- [x] La sección de imágenes explica la configuración de assets y URLs remotas.
- [x] Se conservan las dos variantes de imagen remota: informativa y decorativa.
- [x] `ImagenRuta` utiliza la ruta de asset que recibe como parámetro.
- [x] La sección `Placeholder` se mantiene sin demostraciones añadidas.
- [x] El diseño se adapta a pantallas amplias y estrechas.
- [x] El tema visual usa fondo claro, tarjetas y barra superior azul.

## Dos componentes explicados

### `TextoJerarquico`

Se eligió `texto` como parámetro obligatorio porque siempre debe existir un
contenido que mostrar. `tipo` es opcional y tiene como valor inicial
`TipoTexto.cuerpo`, una opción segura para texto normal.

El parámetro `tipo` permite tres variantes:

- `TipoTexto.titulo`: texto grande y destacado.
- `TipoTexto.subtitulo`: texto intermedio y en negrita.
- `TipoTexto.cuerpo`: texto normal.

Ejemplo:

```dart
const TextoJerarquico(
  texto: 'Ruta del río',
  tipo: TipoTexto.titulo,
)
```

La comprobación funcional de esta sección detecta si las tres variantes
mantienen el mismo contenido pero aplican una jerarquía visual diferente.

### `BotonAccion`

`texto` es obligatorio porque identifica la acción. `onPressed` es opcional:
recibe un callback `VoidCallback` cuando el botón debe responder y puede ser
`null` para representar un botón desactivado. `destacado` vale `false` por
defecto para conservar el estilo normal.

Las variantes se seleccionan así:

- `destacado: false`: botón normal, más compacto.
- `destacado: true`: botón verde, con texto blanco y mayor espaciado.
- `onPressed: null`: botón deshabilitado.

Ejemplo:

```dart
BotonAccion(
  texto: 'Comenzar',
  destacado: true,
  onPressed: () {
    debugPrint('Comenzar');
  },
)
```

La comprobación funcional de esta sección detecta que el callback se ejecuta
al pulsar el botón activo y que el botón con `onPressed: null` no se puede
activar.
