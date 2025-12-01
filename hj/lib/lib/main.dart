import 'package:flutter/material.dart';
import 'HolaMundo.dart';
import 'boton.dart';
import 'cajaTexto.dart';
import 'ejCheckBox.dart';
import 'ejRadio.dart';
import 'lista.dart';
import 'contenedor.dart';
import 'columna.dart';
import 'Topicos.dart';
import 'fila.dart';
import 'tendencias.dart';
import 'ejemploMobile.dart';
import 'perfil.dart';

void main() {
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  title: "Mi app",
      //  home: HolaMundo(),
      initialRoute: "/",
      routes: {
        "/": (context) => const perfil(),
        "/EjHolaMundo": (context) => const HolaMundo(),
      },
    );
  }
}
