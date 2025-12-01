import "package:flutter/material.dart";


class Tendencias extends StatelessWidget {
  const Tendencias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Columnas ")),
        body: 
           Container(
             color:  Color.fromARGB(255, 252, 237, 236),
             child: ListView(
                 scrollDirection: Axis.vertical,
                 children: [
                      cTendencias(
                        "Holaflutter.widgets.LocaleResolutionCallback} The signature of [WidgetsApp.localeResolutionCallback]. It is recommended to provide a [LocaleListResolutionCallback] instead of a [LocaleResolutionCallback] when possible, as [LocaleResolutionCallback] only receives a subset of the information provided in [LocaleListResolutionCallback]. A [LocaleResolutionCallback] is responsible for computing the locale of the app's [Localizations] object when the app starts and when user changes the default locale for the device after   LocaleListResolutionCallback] fails or is not provided."),
                      cTendencias("Holaflutter.widgets.LocaleResolutionCallback} The signature of [WidgetsApp.localeResolutionCallback]. It is recommended to provide a [LocaleListResolutionCallback] instead of a [LocaleResolutionCallback] when possible, as  locale of the app's [Localizations] object when the app starts and when user changes the default locale for the device after   LocaleListResolutionCallback] fails or is not provided."),
                      cTendencias("Hola")
                 ],
             ),
           )
             
                   
        );
  }   

  Widget cTendencias(String t){
     return Container(
              // color: const Color.fromARGB(255, 176, 204, 243),
              // height: 200,
              constraints: const BoxConstraints(minHeight: 180),
              // width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(8),
              decoration:  const BoxDecoration(
                 color: Color.fromARGB(255, 176, 204, 243),
                 borderRadius:  BorderRadius.all(Radius.circular(10))
              ),
              child:        
                   Column(
                      children: [
                          Row(
                             children: [
                               Image.asset("assets/img/torta.png", width: 80,),
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                    Text("Juan Perez", style: TextStyle(fontSize: 26),),
                                    Text("Hace 1 hora"),
                                ],
                               )
                             ],
                          ),

                            Text(t),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                                
                                Row(
                                  children: [
                                    IconButton(
                                          onPressed: (){}, 
                                          icon: const Icon(Icons.thumb_up)),
                                    const Text("120 Likes"),
                                  ],
                                )   ,


                                Row(
                                  children: [
                                    IconButton(
                                          onPressed: (){}, 
                                          icon: const Icon(Icons.remove_red_eye)),
                                    const Text("200 views"),
                                  ],
                                )       
                             ],
                          )
                      ],
                   )
                 )    ;
  }
}