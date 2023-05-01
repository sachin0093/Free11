import 'package:fantacy_app/MyContestPreview/ui.dart';
import 'package:fantacy_app/contestPreview/ui.dart';
import 'package:fantacy_app/home/widgets/contest_card.dart';
import 'package:fantacy_app/home/widgets/my_context_card.dart';
import 'package:fantacy_app/home/widgets/team_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MatchPreview extends StatefulWidget {
  const MatchPreview({super.key});

  @override
  State<MatchPreview> createState() => _MatchPreviewState();
}

class _MatchPreviewState extends State<MatchPreview> with SingleTickerProviderStateMixin {
  int count = 2;
  late TabController _tabController;

  @override
  void initState() {

    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white),
        title: ListTile(
          textColor: Colors.white,
          title: Text("MI vs RR"), subtitle: Text("2h 26m left"), ),
      ),

      body: Column(
        children: [
          Container(
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
              const Tab(text:"Contest",),
              Tab(text:"My Contest ($count)",),
              Tab(text:"My Teams ($count)",),
              ],
            ),
          ),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
              ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContestPreview(),),),
          child: ContestCard()),
        itemCount: 20,
        ),
              ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyContestPreview(),),),
          child: MyContestCard()),
        itemCount: 20,
        ),
              ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MatchPreview(),),),
          child: TeamCard()),
        itemCount: 20,
        )
            ]),
          ),
        ],
      ),
    ) ;
  }
}