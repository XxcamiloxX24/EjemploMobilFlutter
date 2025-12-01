import "package:ado/lib/contenedor.dart";
import "package:flutter/material.dart";


class ejemploMobile extends StatelessWidget {
  const ejemploMobile({super.key});

Widget _buildCard({
  required Color color,
  required String title,
  required String exercises,
  required String minutes,
}) {
  return Container(
    width: 240,
    margin: const EdgeInsets.only(right: 16),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title, style: const TextStyle(fontSize: 33, color: Colors.white, fontWeight: FontWeight.bold)),
        SizedBox(height: 30,),
        Text(exercises, style: const TextStyle(fontSize: 23,color: Colors.white)),
        Text(minutes, style: const TextStyle(fontSize: 23,color: Colors.white)),
      ],
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
           Container(
             color: const Color.fromRGBO(255, 255, 255, 1),
             padding: const EdgeInsets.all(0),
             child: ListView(
                 scrollDirection: Axis.vertical,
                 padding: const EdgeInsets.all(0),
                 children: [
                       Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          SizedBox(height: 46, width: 400, 
                          child: Container(
                            padding: const EdgeInsets.only(left: 25),
                            child: const SizedBox(child: Text("Hi Smit\nLet's check your acti"),),
                          )),
                          const SizedBox(height: 20,),
                        ],
                      ),
                      Container(
                        height: 320,
                        width: 500,
                        padding: const EdgeInsets.all(0),
                        margin: const EdgeInsets.all(0),
                        decoration: const BoxDecoration(
                          color:  Color.fromARGB(255, 255, 255, 255)
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 150,
                                  width: 250,
                                  padding: const EdgeInsets.all(19),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 121, 195, 255),
                                    borderRadius: 
                                      BorderRadius.all(Radius.circular(34))
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("In progre", style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold
                                          )),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text("2", style: TextStyle(
                                            fontSize: 34,
                                            fontWeight: FontWeight.bold
                                          ),),
                                          SizedBox(width: 20,),
                                          Text("Workout", style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                            )),

                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 150,
                                  width: 250,
                                  padding: const EdgeInsets.all(19),
                                  decoration: const BoxDecoration(
                                    color:  Color.fromARGB(255, 131, 253, 135),
                                    borderRadius: 
                                      BorderRadius.all(Radius.circular(34))
                                  ),
                                  
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Time Spe", style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold
                                          )),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text("6", style: TextStyle(
                                            fontSize: 34,
                                            fontWeight: FontWeight.bold
                                          ),),
                                          SizedBox(width: 20,),
                                          Text("Minute", style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                            )),

                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 190,
                                  height: 305,
                                  decoration: const BoxDecoration(
                                    color:  Color.fromARGB(255, 252, 255, 77),
                                    borderRadius: 
                                      BorderRadius.all(Radius.circular(34))
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Finishe', style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.bold,
                                         fontSize: 33,)),
                                         SizedBox(height: 20),
                                      Text('1', style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.bold,
                                         fontSize: 46,)),
                                        SizedBox(height: 20),
                                      Text('Complete', style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.bold,
                                         fontSize: 20,)
                                  )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 25),
                        child: const Text("Discover new workouts", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child:
                          SizedBox(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  _buildCard(
                                    color: Colors.blue,
                                    title: "Cardi",
                                    exercises: "10 Exercis",
                                    minutes: "50 Minut",
                                  ),
                                  _buildCard(
                                    color: Colors.orange,
                                    title: "Arm",
                                    exercises: "6 Exercis",
                                    minutes: "35 Minut",
                                  ),
                                  // puedes agregar más cards
                                ],
                              ),
                            )
                      )
                 ],
             ),
           )
             
                   
        );
  }   

}