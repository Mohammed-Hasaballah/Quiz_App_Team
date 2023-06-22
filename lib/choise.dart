import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mul_quize_2/bring_question.dart';

import 'constanse.dart';

// ignore: camel_case_types, must_be_immutable
class choise extends StatefulWidget {
   late String choisetext;
   late int useranswer;
   late Color color;
    late int questionNumber;
    late Color dfd;
    Function()? onPressed;
    
  choise(this.choisetext,this.color,this.useranswer,this.questionNumber, this.onPressed);

  @override
  State<choise> createState() => _choiseState();
}

class _choiseState extends State<choise> {
bring_question chick=bring_question();

  @override
  Widget build(BuildContext context,) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
        
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
                    backgroundColor: widget.color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  ),
         child: Row(
                    children: [
                      const SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            widget.choisetext,
                            style: const TextStyle(
                                color: kL2,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.check_rounded,
                        color: kL2,
                      ),
                    ],
                  ),
                ),
    );
  }
}