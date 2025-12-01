import "package:flutter/material.dart";


class Columna extends StatelessWidget {
  const Columna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Columnas ")),
        body: 
        
            Container(
              color: Colors.redAccent,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                   
                   Text("Hola 1"),
                   Text("Hola 1"),
                   Text("Hola 1 Hola 1 Hola 1  Hola 1 "),
                   Text("Hola 1"),
                ],
              ),
            )        
        );
  }
}