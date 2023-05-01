
import 'package:fantacy_app/home/widgets/contest_card.dart';
import 'package:fantacy_app/home/widgets/team_card.dart';
import 'package:fantacy_app/match_preview.dart/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ContestPreview extends StatefulWidget {
  const ContestPreview({super.key});

  @override
  State<ContestPreview> createState() => _ContestPreviewState();
}

class _ContestPreviewState extends State<ContestPreview>  with SingleTickerProviderStateMixin {
 int count = 2;
  late TabController _tabController;

  @override
  void initState() {

    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white),
        title: ListTile(
          textColor: Colors.white,
          title: Text("MI vs RR"), subtitle: Text("2h 26m left"), ),
      ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
                child: Text("Price Pool", style: TextStyle(color: Colors.black,),),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text("₹50 Crores", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: LinearProgressIndicator(
                  value: 0.5, // set the progress value between 0.0 and 1.0
                ),
              ),
            const  ListTile(
                leading: Text("73,03,369 spots left",style: TextStyle(color: Color.fromARGB(255, 238, 25, 25)),),
                trailing: Text("1,22,44,897 spots"),
              ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
            child: SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){}, child: Text("Join ₹19",style: TextStyle(fontSize: 18),)
                ),
            ),
          ),
            
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
              ),

              Container(
                height: 40,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            child: TabBar(
              dividerColor: Colors.grey,
              labelColor: Colors.black,
              labelStyle: TextStyle(color: Colors.black),
            controller: _tabController,
            tabs: [
              const Tab(text:"Winings",),
              Tab(text:"Leaderboard",),
              ],
            ),
          ),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [

              ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("#10-21"),
              trailing: Text("₹9999999"),
            );
          },
          itemCount: 20,
          ),
        ListView.builder(
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
              
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.grey.shade300, // set border color
                          width: 2, // set border width
                        ),),
                        child: CircleAvatar(child: Image.asset('assets/png/Gujarat-Lions.png'),  backgroundColor: Colors.transparent,)),
                      SizedBox(width: 10,),
                      Text("Saplynx"),
                      SizedBox(width: 10,),

                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.grey.shade300,),
                        child: Text("T7", style: TextStyle(),),)
                    ],
                  ),
                  Divider(color: Colors.grey.shade300, thickness: 2,),

                ],),
              )
            ),
            itemCount: 20,
          ),
            ]),
          ),
          ]),
    ) ;
  }
}