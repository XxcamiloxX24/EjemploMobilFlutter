import "package:flutter/material.dart";
import 'boton.dart';

class formulario extends StatefulWidget {
  const formulario({super.key});

  @override
  State<formulario> createState() => _formulario();
}

class _formulario extends State<formulario> {

  TextEditingController nombrePersona = TextEditingController();
  TextEditingController pesoPersona = TextEditingController();
  TextEditingController alturaPersona = TextEditingController();
  Map<String, String> opc = {"1":"Masculino", "2": "Femenino", "3": "Otro"} ;
  String? seleccione = "1";
  

  @override
  Widget build(BuildContext context) {


    double alturaCm;
    return Scaffold(
       appBar: AppBar(title: const Text("Ejemplo Formulario"),backgroundColor: Color.fromRGBO(50, 163, 255, 1),
       ),
       body: 
           SizedBox(
             width: MediaQuery.of(context).size.width,
             child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: 
                Column(
                  children: [
                    
                    SizedBox(height: 80,
                    width: 0,),

                    TextField(
                    controller: nombrePersona,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: "Digite su nombre"
                      ),
                    ),


                    SizedBox(height: 60,),
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
                    SizedBox(height: 60,),
                    TextField(
                      controller: pesoPersona,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Digite su peso en kg"
                        ),
                    ),

                    SizedBox(height: 60,),
                    TextField(
                      controller: alturaPersona,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Digite su altura en cm"
                        ),
                    ),
                    SizedBox(height: 80,),
                    ElevatedButton(
                      onPressed: () {
                        double peso = double.tryParse(pesoPersona.text) ?? 0;
                        double alturaCm = double.tryParse(alturaPersona.text) ?? 0;
                        double alturaM = alturaCm / 100;

                        if (peso <= 0 || alturaM <= 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Ingrese valores válidos")),
                          );
                          return;
                        }

                        double imc = peso / (alturaM * alturaM);

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Su IMC es: ${imc.toStringAsFixed(2)}")),
                        );
                      },
                      child: const Text("Calcular"),
                    ),
                  ],
                )

            ) 
           )
    );
  }
}