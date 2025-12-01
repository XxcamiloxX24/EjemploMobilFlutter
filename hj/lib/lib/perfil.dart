import "package:ado/lib/contenedor.dart";
import 'package:flutter/material.dart';



class perfil extends StatelessWidget {
  const perfil({super.key});


Widget _buildCard({
  required Color color,
  required String img,
  required String textp
  ,

}) {
  return Container(
    width: 120,
    margin: const EdgeInsets.only(right: 16),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(img),
        const SizedBox(height: 30,),
        Text(textp, style: const TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0))),
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
             child: Container(
                 padding: const EdgeInsets.all(40),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 252, 193, 0),
                              borderRadius: BorderRadius.all(Radius.circular(100))
                            ),
                            child: Image.asset("assets/img/avatar.png"),
                          ),
                          Container(
                            height: 200,
                            width: 200,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Jane Chao", style: TextStyle(
                                  fontSize: 33,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0)
                                ),),
                                SizedBox(height: 20,)
                                ,
                                Text("iOS Developer", style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromARGB(255, 0, 0, 0)
                                ),)
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text("In love with Swift, runnig a Swift tutorial channel, hoping to bring more people into the wonderful wold of coding.", 
                      style: TextStyle(fontSize: 17),),
                      const SizedBox(height: 40),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 158, 108, 43),
                          borderRadius: BorderRadius.all(Radius.circular(35)),
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text("Contact Me", style: TextStyle(
                              color: Colors.white,
                              fontSize: 19
                            ),)
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text("Skills", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                                  _buildCard(
                                    color: Colors.white, 
                                    img: "assets/img/pyton.jpg", 
                                    textp: "Python"),
                                  _buildCard(
                                    color: Colors.white, 
                                    img: "assets/img/swift.png", 
                                    textp: "Swift"),
                                  _buildCard(
                                    color: Colors.white, 
                                    img: "assets/img/mysql.png", 
                                    textp: "mySQL"),
                                  _buildCard(
                                    color: Colors.white, 
                                    img: "assets/img/xd.png", 
                                    textp: "Xd"),
                            ],
                        ),
                      ),SizedBox(
                        height: 100,
                        child: ListView(
                            scrollDirection: Axis.vertical,
                            children: const [
                                   Text("Experience", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                  ),),
                                  Text("2022", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.grey
                                  ),),
                                  SizedBox(height: 10,),
                                  Text("Swift Content Creator", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                    color: Color.fromARGB(255, 0, 0, 0)
                                  ),),
                                  Text("ChaoCode", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                    color: Color.fromARGB(255, 0, 0, 0)
                                  ),),
                                  SizedBox(height: 20,),
                                  Text("2021", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.grey
                                  ),),
                                  SizedBox(height: 10,),
                                  Text("App Developer", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                    color: Color.fromARGB(255, 0, 0, 0)
                                  ),),
                                  Text("JC Studio", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                    color: Color.fromARGB(255, 0, 0, 0)
                                  ),),
                            ],
                        ),
                      ),
                      
                 ],
                 ),
              ))
           );
  }   

}