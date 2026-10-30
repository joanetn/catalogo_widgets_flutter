import 'package:flutter/material.dart';

import 'ui/catalogo/catalogo_pantalla.dart';

void main() => runApp(const CatalogoApp());

class CatalogoApp extends StatelessWidget {
  const CatalogoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catálogo de widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Color(0xff4058be),
          surface: Color(0xfff4f7fb),
        ),
        scaffoldBackgroundColor: Color(0xfff4f7fb),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff4058be),
          foregroundColor: Colors.white,
        ),
      ),
      home: CatalogoPantalla(),
    );
  }
}
