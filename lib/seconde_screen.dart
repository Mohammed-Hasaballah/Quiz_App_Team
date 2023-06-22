import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mul_quize_2/quiz_screen.dart';


import 'constanse.dart';

class seconde_screen extends StatefulWidget {
  const seconde_screen({super.key});

  @override
  State<seconde_screen> createState() => _seconde_screenState();
}

class _seconde_screenState extends State<seconde_screen> {
  int levelNumber=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors:[ kBlueBg,
                       kL2,] ,
                       begin: Alignment.topCenter,
                       end: Alignment.bottomCenter
          ),
        ),
        child:  Padding( 
          padding: const EdgeInsets.only(top: 56, left: 24, right: 24),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  OutlinedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    style:const ButtonStyle().copyWith(
                      shape: const MaterialStatePropertyAll(CircleBorder()),
                      side: const MaterialStatePropertyAll(BorderSide(color: Colors.white))
                    ),
                     child: const Icon(Icons.close,color: Colors.white,)
                     )],
              ),
               Expanded(
                child: Center(
                  child: Image.asset('assets/images/ballon-b.png'),
                ),
              ),
               //----------------number of question---------
              Text(
                'question $levelNumber ',

                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Sf-Pro-Text',
                  color: Colors.white60,
                ),
                //-----------------------------------------
              ),
              const SizedBox(
                height: 8,
              ),
              ///--------------- text of qastion--------------------
               const Text(
                "continuing",
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Sf-Pro-Text',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24,),
              //-----------------------------
              const Text(
                "do you feel confident? here you wellchalhange one of our most difficult travel question",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Sf-Pro-Text',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 56,),
              //----------------------------
               Center(
                 child: ElevatedButton(
                   onPressed: (){
                     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => quiz_screen()),
            );
                   },
                   style:ElevatedButton.styleFrom(
                     backgroundColor: Colors.white,
                     shape:RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15),
                     ),
                     padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16)
                   ) ,
                    child: const Center(child: Text("Game",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                      ),))
               ),
               const SizedBox(height: 120,),
            ],

          ) ,),
      ),
      );
  }
}