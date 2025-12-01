import "package:flutter/material.dart";

class ejCheckBox extends StatefulWidget {
  const ejCheckBox({super.key});

  @override
  State<ejCheckBox> createState() => _ejCheckBoxState();
}

class _ejCheckBoxState extends State<ejCheckBox> {
  bool estado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: const Text("Ejemplo Checkbox"),
       ),
       body: 
           SizedBox(
             width: MediaQuery.of(context).size.width,
             child: CheckboxListTile(
                  onChanged: (value) {
                  setState(() {
                     estado = !estado;
                  });
             }, 
             value: estado,
             title: const Text("Acepto terminos y condiciones"),
             ),
           ) ,
    );
  }
}