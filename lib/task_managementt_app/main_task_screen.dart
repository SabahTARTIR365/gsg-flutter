import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gsg/task_managementt_app/models/task_model.dart';
import 'package:flutter_gsg/task_managementt_app/views/screens/all_tasks_screen.dart';
import 'package:flutter_gsg/task_managementt_app/views/screens/complete_tasks_screen.dart';
import 'package:flutter_gsg/task_managementt_app/views/screens/incompleted_tasks_screen.dart';

import 'data/dummy_data.dart';

class Main_Task extends StatefulWidget{
  @override
  State<Main_Task> createState() => _Main_TaskState();
}

class _Main_TaskState extends State<Main_Task> with SingleTickerProviderStateMixin{
  checkTask(TaskModel taskModel){
    int index =tasks.indexOf(taskModel);
    tasks[index].isComplete=!tasks[index].isComplete;
    setState(() {

    });

  }
  late TabController tabController;
  inisializeTabController(){
    tabController=TabController(length: 3, vsync: this);
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    inisializeTabController();
  }
  @override
  Widget build(BuildContext context) {
return Scaffold(
  drawer: Drawer(child: Column(
    children: [
    UserAccountsDrawerHeader(
      currentAccountPicture: CircleAvatar(child: Text('ST'),),
        accountName: Text('Sabah tartir'),
        accountEmail: Text('Sabahtartir99@gmail.com')),

      ListTile(
        onTap: (){
          tabController.animateTo(0);
        },
        title: Text('All tasks'),
        subtitle: Text('Go to show All tasks'),
        leading:Icon(Icons.view_headline_sharp),
      trailing: Icon(Icons.arrow_forward_ios),),

      ListTile(
        onTap: (){
          tabController.animateTo(1);
        },
        title: Text('Completed tasks'),
        subtitle: Text('Go to show the completed tasks'),
        leading:Icon(Icons.done),
        trailing: Icon(Icons.arrow_forward_ios),),

      ListTile(
        onTap: (){
          tabController.animateTo(2);
          
        },
        title: Text('InCompleted tasks'),
        subtitle: Text('Go to show the incompleted tasks'),
        leading:Icon(Icons.clear),
        trailing: Icon(Icons.arrow_forward_ios),),
  ],
  ),
  ),

  appBar: AppBar(

    title: const Text('Tasks App'),

    bottom: TabBar(
      controller: tabController,
      tabs: [

      Tab(text: 'All tasks',),

      Tab(text: 'Done tasks',),

      Tab(text: 'Uncompleted tasks',),



    ],),

  ),

body: TabBarView(
    controller: tabController,
    children:[
 AllTasksScreen( checkTask),
CompleteTasksScreen( checkTask),
IncompleteTasksScreen( checkTask),


]),



);
  }
}