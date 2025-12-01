import 'package:flutter/material.dart';

class Contenedor extends StatelessWidget {
  const Contenedor({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: const Text("Boton")),
        body:  Container(
             
            height: MediaQuery.of(context).size.height * 0.5,
            width:  MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            decoration:    const  BoxDecoration(
                 color: Colors.red,
                 borderRadius: 
                  BorderRadius.only(topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))
            ),
            child: const Text("Hola Mundo", 
                style: TextStyle(fontSize: 30),),
        
        )
        
        );
  }
}