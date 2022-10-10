import 'package:flutter/material.dart';
import 'package:flutter_gsg/task_managementt_app/data/dummy_data.dart';
import 'package:flutter_gsg/task_managementt_app/models/task_model.dart';
import 'package:flutter_gsg/task_managementt_app/views/widgets/task_widget.dart';
class AllTasksScreen extends StatefulWidget{
  @override
  State<AllTasksScreen> createState() => _AllTasksScreenState();
}

class _AllTasksScreenState extends State<AllTasksScreen> {
  checkTask(TaskModel taskModel){
    int index =tasks.indexOf(taskModel);
    tasks[index].isComplete=!tasks[index].isComplete;
    setState(() {

    });

  }
  @override
  Widget build(BuildContext context) {
  return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context,index){
return TaskWidget(tasks[index],checkTask);

      });
  }
}