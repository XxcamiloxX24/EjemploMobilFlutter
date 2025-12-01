import "package:flutter/material.dart";


class Filas extends StatelessWidget {
  const Filas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Columnas ")),
        body: 
           Container(
              color: Colors.amberAccent,
              height: 180,
              child:        
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment,
                  children: const [
                      Text("Hola "),
                      Text("Hola "),
                      Text("Hola "),

                  ],
                 )    
              ),
                   
        );
  }   
}