import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gsg/task_managementt_app/views/screens/all_tasks_screen.dart';
import 'package:flutter_gsg/task_managementt_app/views/screens/complete_tasks_screen.dart';
import 'package:flutter_gsg/task_managementt_app/views/screens/incompleted_tasks_screen.dart';

class Main_Task extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return DefaultTabController(
  length: 3,
  child:   Scaffold(

    appBar: AppBar(

      title: const Text('Tasks App'),

      bottom: TabBar(tabs: [

        Tab(text: 'All tasks',),

        Tab(text: 'Done tasks',),

        Tab(text: 'Uncompleted tasks',),



      ],),

    ),

body: TabBarView(children:[
 AllTasksScreen(),
  CompleteTasksScreen(),
  IncompleteTasksScreen(),


]),



  ),
);
  }




}