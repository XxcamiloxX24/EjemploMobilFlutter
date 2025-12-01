import "package:flutter/material.dart";


class Topicos extends StatelessWidget {
  const Topicos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Columnas ")),
        body: 
           Container(
              color: Colors.amberAccent,
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal ,
                children: [
                  cContenedor("Java", "40 Post", Colors.red),
                  cContenedor("PHP", "7 Post", Color.fromARGB(255, 44, 199, 24)),
                  cContenedor("JS", "10 Post", Color.fromARGB(255, 222, 128, 121)),
                  cContenedor("C++", "40 Post", Color.fromARGB(255, 84, 110, 186)),
                  cContenedor("CSS", "9 Post", Color.fromARGB(255, 219, 102, 190)),
                ]                
              ),
           )
                   
        );
  }

  Widget cContenedor(String titulo, String post, Color c){
     return Container(             
              width: 150,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(8),
              decoration:   BoxDecoration(
                 color: c,
                 borderRadius: const BorderRadius.all(Radius.circular(10))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:   [                   
                   Text(titulo, style: const TextStyle(fontSize: 24, 
                                    fontWeight: FontWeight.bold),),
                   Text(post, style: const TextStyle(fontSize: 20),),
                 
                ],
              ),
            ) ;
  }
}