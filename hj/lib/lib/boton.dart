import "package:flutter/material.dart";

class boton extends StatelessWidget {
  const boton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Boton")),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                // print("Hola");
                Navigator.pushNamed(context, '/EjHolaMundo');
              },
              child: const Text("Aceptar")),
        ));
  }
}
