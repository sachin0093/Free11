
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ContestCard extends StatelessWidget {
  const ContestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 210,
        padding:const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          shape: RoundedRectangleBorder(
            side:const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(10.0),),
          color: Colors.white,
          elevation: 3,
          child: Column(children: [
              ListTile(
                leading:Text("Price Pool", style: TextStyle(color: Colors.black,),),
                trailing:Text("Entry : ₹50", style: TextStyle(color: Colors.black),),
              ),
              ListTile(
                leading:Text("₹50 Crores", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                trailing:SizedBox( height:30 ,child: ElevatedButton( onPressed: (){},child: Text("Join"),))
              ),
              
              LinearProgressIndicator(
                value: 0.5, // set the progress value between 0.0 and 1.0
              ),
            const  ListTile(
                leading: Text("73,03,369 spots left",style: TextStyle(color: Color.fromARGB(255, 238, 25, 25)),),
                trailing: Text("1,22,44,897 spots"),
              ),
              Spacer(),
              Container(
                height: 30,
              color: Colors.grey.shade300,
              child: Padding(
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
              ),
              )
          ]),
        ),
      )
    ;
  }
}