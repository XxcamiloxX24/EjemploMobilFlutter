import "package:flutter/material.dart";

class ejRadio extends StatefulWidget {
  const ejRadio({super.key});

  @override
  State<ejRadio> createState() => _ejRadioState();
}

class _ejRadioState extends State<ejRadio> {
  String? genero = "Femenino";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: const Text("Ejemplo Checkbox"),
       ),
       body: 
           SizedBox(
             width: MediaQuery.of(context).size.width,
             child: 
              Column(
                children: [
                     
                    RadioListTile(
                      value: "Masculino", 
                      title: const Text("Masculino"),
                      groupValue: genero, 
                      onChanged: (value) {
                        setState(() {
                          genero = value;
                        });
                    },) ,
                    RadioListTile(
                      value: "Femenino", 
                      title: const Text("Femenino"),
                      groupValue: genero, 
                      onChanged: (value) {
                        setState(() {
                          genero = value;
                        });
                    },) ,

                ],
              )

           ) ,
    );
  }
}