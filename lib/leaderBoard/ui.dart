import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
class ScoreBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // Static widgets
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(onPressed: (){}, child: Text("MI")),
                      ElevatedButton(onPressed: (){}, child: Text("MI"))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text("RR"),
                        Spacer(),
                        Text("(20 overs)"),
                        Text("217/7", style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(children: [
                        Text("Batter"),
                        Spacer(),
                        Text("R"),
                        SizedBox(width: 30,),
                        Text("B"),
                        SizedBox(width: 30,),
                        Text("4s"),
                        SizedBox(width: 25,),
                        Text("6s"),
                        SizedBox(width: 30,),
                        Text("S/R"),
                      ],),
                    ),
                  ),
                  
              // Generated widgets
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                                  ),
                                ),
                    child: Row(children: [
                      Text("RohitSharma"),
                      Spacer(),
                      Text("100"),
                      SizedBox(width: 25,),
                      Text("50"),
                      SizedBox(width: 25,),
                      Text("10"),
                      SizedBox(width: 25,),
                      Text("5s"),
                      SizedBox(width: 30,),
                      Text("200"),
                    ],),
                                  ),
                  );
                },
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text("Total"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
