import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gsg/task_managementt_app/models/task_model.dart';

class TaskWidget extends StatefulWidget
{
  TaskModel taskModel;
  TaskWidget (this.taskModel);

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: widget.taskModel.isComplete,
      onChanged: (v){
        widget.taskModel.isComplete=!  widget.taskModel.isComplete;
        setState(() {
          
        });
      },
    title: Text(widget.taskModel.name),);
  }
}