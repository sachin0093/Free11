import 'package:fantacy_app/home/widgets/card.dart';
import 'package:fantacy_app/home/widgets/contest_card.dart';
import 'package:fantacy_app/home/widgets/team_card.dart';
import 'package:fantacy_app/match_preview.dart/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
    appBar: AppBar(  
      centerTitle:true,
      title: const Text("Free11"),
      
    ),
      body:ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MatchPreview(),),),
          child: MatchCard()),
        itemCount: 20,
        )
      );
  
  }
}