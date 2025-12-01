import "package:flutter/material.dart";
class HolaMundo extends StatelessWidget {
  const HolaMundo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 202, 193, 192),

      appBar:  AppBar(
          title: const Text("Mi primera App"),
          backgroundColor: Colors.pink,
      ),

      body: const Center(
        child:  Text("Hola Mundo", 
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 24
                    ),
                  )
        )
    );
  }
}