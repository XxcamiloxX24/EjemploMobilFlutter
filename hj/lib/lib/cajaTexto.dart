import "package:flutter/material.dart";

class cajaTexto extends StatefulWidget {
  const cajaTexto({super.key});

  @override
  State<cajaTexto> createState() => _cajaTextoState();
}

class _cajaTextoState extends State<cajaTexto> {
  TextEditingController cntPrecio = TextEditingController();
  TextEditingController cntCantidad = TextEditingController();
  int resultado = 0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Boton")),
        body: 
        
          Column(
            children: [
              
              TextField(
                  controller: cntPrecio,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Digite precio"
                  ),
              ),

              TextField(
                  controller: cntCantidad,
                  decoration: const InputDecoration(
                    labelText: "Digite cantidad"
                  ),
              ),

              ElevatedButton(onPressed: (){
                  int precio =  int.parse( cntPrecio.text);
                  int cantidad =  int.parse( cntCantidad.text);

                  setState(() {
                     resultado = precio * cantidad;
                  });
                  print(precio*cantidad);
              }, 
              child: const Text("Calcular")),

              Text("$resultado")

            ],
          )
        
        );
  }
}
