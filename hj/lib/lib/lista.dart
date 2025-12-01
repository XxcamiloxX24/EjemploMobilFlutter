import 'package:flutter/material.dart';


class ListaDespelgable extends StatefulWidget {
  const ListaDespelgable({super.key});

  @override
  State<ListaDespelgable> createState() => _ListaDespelgableState();
}

class _ListaDespelgableState extends State<ListaDespelgable> {
  // array   = listas String opciones = [1,4,4,6,6,8]
  // objetos  =>       obj = {"nombre":"juan", "edad"= 45} 
  // mapas    Map<String, String> opc = {"nombre":"juan", "apellidos": "perez"}  

  Map<String, String> opc = {"1":"Masculino", "2": "Femenino"} ;
  String? seleccione = "2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: const Text("Ejemplo Checkbox"),
       ),
       body: 
           Column(
            children:    [
                const Text("Seleccione Genero"), 
                DropdownButton(
                      value: seleccione,
                      onChanged: ( String? value){
                        print(value);
                        setState(() {
                           seleccione = value;
                        });
                      },
                      items: opc.entries.map((e) {
                          return DropdownMenuItem(
                                  value: e.key,
                                  child:  Text(e.value)
                                );
                      },).toList()
                      ),
                      
            ],
           )
    );
  }
}