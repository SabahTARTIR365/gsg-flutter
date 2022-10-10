import 'package:flutter/material.dart';
import 'package:flutter_gsg/task_managementt_app/data/dummy_data.dart';
import 'package:flutter_gsg/task_managementt_app/models/task_model.dart';
import 'package:flutter_gsg/task_managementt_app/views/widgets/task_widget.dart';
class CompleteTasksScreen extends StatelessWidget{
  Function function;
  CompleteTasksScreen(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.where((element) => element.isComplete).length,
        itemBuilder: (context,index){
          return TaskWidget(tasks.where((element) => element.isComplete).toList()[index],function);

        });
  }
}