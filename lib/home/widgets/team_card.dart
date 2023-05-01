
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TeamCard extends StatelessWidget {
  const TeamCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 190,
        padding:const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          color:Colors.blueGrey,
          shape: RoundedRectangleBorder(
            side:const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(10.0),),
          
          elevation: 3,
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.black12,
              child: Row(children: [
               Text("Jay Shivaray", style: TextStyle(color: Colors.black,)),
               SizedBox(width: 10,),
               Text("(T1)"),
               Spacer(),
               Icon(Icons.edit_outlined),
               SizedBox(width: 20,),
               Icon(Icons.copy_outlined)
              ],
              ),
            ),
            Container(
            
            child:  Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
               Column(
                children: [
                  Text("CHE"),
                  Text("8", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                ],
               ),
               SizedBox(width: 20,),
                Column(
                children: [
                  Text("CHE"),
                  Text("8", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                ],
               ),
               Spacer(),
               Container(
                height: 90,
                width: 70,
                child: Stack(children: [
                 Container(
                  width: 20,
                  height: 20,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,),
                    child: Center(child: Text("C", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                      width: 70,
                      height: 20,
                      child: Center(child: Text("Captian")),
                    ),
                  )
                ]),
               ),
                SizedBox(width: 20,),
                Container(
                height: 90,
                width: 70,
                child: Stack(children: [
                 Container(
                  width: 20,
                  height: 20,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white,),
                    child: Center(child: Text("C", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                      width: 70,
                      height: 20,
                      child: Center(child: Text("Captian")),
                    ),
                  )
                ]),
               )
              ],),
            ),
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(children: [
                  Icon(Icons.first_page),
                  SizedBox(width: 10,),
                  Text("₹50 Crores"),
                  SizedBox(width: 20,),
                  Text("66%"),
                  SizedBox(width: 20,),
                  Text("Upto 20"),
                  Spacer(),
                  Text("Guaranteed")
                  
                ]),
              )
          ]),
        ),
      );
    
  }
}