import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
              const ListTile(
                leading:Text("IPL", style: TextStyle(color: Colors.black,),),
                trailing: Icon(Icons.notification_add_outlined, color: Color.fromARGB(255, 175, 121, 121),),
              ),
              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 0,
                  thickness: 2,
                ),
              ),
            const  ListTile(
                leading: Text("Chennai",style: TextStyle(color: Colors.black),),
                trailing: Text("Mumbai"),
              ),
              ListTile(
                textColor:Color.fromARGB(255, 188, 8, 8),
                
                leading: Image.asset('assets/png/Gujarat-Lions.png'),
                title: Column(children: [
                Text("3h 17m"), 
                  Text("Todat, 3:30 pm",style: TextStyle(color: Color.fromARGB(255, 120, 119, 119)),)
                ]),
              
              trailing:  Image.asset('assets/png/Gujarat-Lions.png'),),
              Spacer(),
              Container(
                height: 30,
              color: Colors.grey.shade300,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(children: [
                  Text("1"),
                  SizedBox(width: 10,),
                  Text("Team"),
                  SizedBox(width: 20,),
                  Text("1"),
                  SizedBox(width: 10,),
                  Text("Contest"),
                  
                ]),
              ),
              )1
          ]),
        ),
      );
    
  }
}