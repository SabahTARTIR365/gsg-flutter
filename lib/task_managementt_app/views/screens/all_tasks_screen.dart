import 'package:flutter/material.dart';
import 'package:flutter_gsg/task_managementt_app/data/dummy_data.dart';
import 'package:flutter_gsg/task_managementt_app/views/widgets/task_widget.dart';
class AllTasksScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context,index){
return TaskWidget(tasks[index]);

      });
  }

  
}