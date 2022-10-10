import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gsg/task_managementt_app/models/task_model.dart';

class TaskWidget extends StatelessWidget
{
  TaskModel taskModel;
  Function ?function;
  TaskWidget (this.taskModel,this.function);


  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: taskModel.isComplete,
      onChanged: (v){
     //   taskModel.isComplete=!  taskModel.isComplete;
       function!(taskModel);
      },
    title: Text(taskModel.name),);
  }
}