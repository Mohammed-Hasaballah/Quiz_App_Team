import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mul_quize_2/seconde_screen.dart';

import 'constanse.dart';

class start_screen extends StatefulWidget {
  const start_screen({super.key});

  @override
  State<start_screen> createState() => _start_screenState();
}

class _start_screenState extends State<start_screen> {
  Stack stack (IconData icon,String level,String text, String image,Color color1,Color color2){
    return  Stack(
                      alignment: Alignment.topRight,
                      children:[
                        Container(
                          margin: EdgeInsets.only(top: 48,bottom: 24),
                          width: 410,
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            
                            gradient: LinearGradient(colors: [
                              color1,
                              color2,]
                            ),
                          ),                            
                          child:Padding(
                            padding: const EdgeInsets.only(left: 24,top:24,bottom: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 48,
                                  child: OutlinedButton(
                                                    onPressed: () {},
                                                    style: OutlinedButton.styleFrom(
                                                      padding: EdgeInsets.all(2),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(16),
                                                        ),
                                                        side: const BorderSide(color: Colors.white)),
                                                         child: Icon(icon,
                                                     
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                ),
                  const SizedBox(height: 8,),
                  Text(level,style:
                  const TextStyle(color: Color.fromARGB(255, 196, 194, 194),
                  fontSize: 16),

                  ),
                  const SizedBox(height: 8,),
                   Text(text,
                
                style: const TextStyle(
                  fontSize: 32,
                  fontFamily: 'Sf-Pro-Text',
                  color: Colors.white,
                ),
              ),
                                
                              ],
                            ),
                          ) ,
                           ),
                           Image.asset(image,width: 150,),
                        
                        
                      ],

                    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding( 
        padding: const EdgeInsets.only(top: 56, left: 24, right: 24),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: (){},
                  style:const ButtonStyle().copyWith(
                    shape: const MaterialStatePropertyAll(CircleBorder()),
                    side: const MaterialStatePropertyAll(
                      BorderSide(
                        color: Color.fromARGB(255, 211, 210, 210)))
                  ),
                   child: const Icon(Icons.favorite,color: Colors.blue,)
                   ),
                    OutlinedButton(
                  onPressed: (){},
                  style:const ButtonStyle().copyWith(
                    shape: const MaterialStatePropertyAll(CircleBorder()),
                    side: const MaterialStatePropertyAll(
                      BorderSide(
                        color: Color.fromARGB(255, 211, 210, 210)))
                  ),
                   child: const Icon(Icons.person,color: Colors.blue,)
                   )
                   ],
            ),
            //-----------------------
            const Text(
                "Let's Play",
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Sf-Pro-Text',
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8,),
              //-----------------------------
              const Text(
                "Be the first !!",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Sf-Pro-Text',
                  color: Color.fromARGB(153, 68, 67, 67),
                ),
              ),
             
              //-----------------------------------------
               Expanded(
                 child: ListView(
                  
                  
                     children: [
                       stack(
                         Icons.check, "level 1",
                          "Travel Newbie",
                           'assets/images/bags.png',
                            kL1, kL12),
                 
                            GestureDetector
                            (onTap: () {
                               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => seconde_screen()),
            );
                            },
                              child: stack(
                                Icons.play_arrow,
                                  "level 2",
                                   "continuing",
                                    'assets/images/ballon-b.png',
                              kL2, kL22),
                            ),
                 
                             stack(
                         Icons.lock,
                          "level 3",
                          "continuing",
                           'assets/images/camera.png',
                            kL2, kL22),
                      
                     ],
                   ),
               ),
              
            ]                
            ),
      )
    );
  }
}