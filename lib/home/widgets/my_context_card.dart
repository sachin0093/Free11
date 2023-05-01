import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyContestCard extends StatelessWidget {
  const MyContestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                leading:Text("Rs.25,200", style: TextStyle(color: Colors.black,),),
                trailing: Icon(Icons.notification_add_outlined, color: Color.fromARGB(255, 175, 121, 121),),
              ),
              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 0,
                  thickness: 2,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(children: [
                      Text("Proze Pool",style: TextStyle(color: Color.fromARGB(255, 120, 119, 119)),), 
                      Text("₹25,200")
                    ]),
                    Spacer(),
                    Column(children: [
                      Text("Spots" ,style: TextStyle(color: Color.fromARGB(255, 120, 119, 119)),), 
                      Text("1,500")
                    ]),
                    Spacer(),
                    Column(children: [
                      Text("Entry", style: TextStyle(color: Color.fromARGB(255, 120, 119, 119)),), 
                      Text("₹20",)
                    ]),
                  ],
              
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0,),
                child: Container(
                  color: Colors.grey.shade300,
                  child: Row(children: [
                    Icon(Icons.one_k_outlined),
                    SizedBox(width: 5,),
                    Text("₹80"),
                    SizedBox(width: 20,),
                    Text("Winning  21%"),
                    Spacer(),
                    Text("Flexible")
                  ]),
                ),
              ),
            
              Container(
                height: 40,
              color: Color.fromARGB(113, 240, 244, 168),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(children: [
                  Text("Jay Shivray 0093"),
                  SizedBox(width: 20,),
                  Text("T1"),
                  SizedBox(width: 10,),
                  Text("615"),
                  Spacer(),
                  Text("#424"),
                  
                ]),
              ),
              )
          ]),
        ),
      );
    
  }
}