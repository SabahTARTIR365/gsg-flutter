import 'package:flutter/material.dart';
import 'package:flutter_gsg/task_managementt_app/data/dummy_data.dart';
import 'package:flutter_gsg/task_managementt_app/models/task_model.dart';
import 'package:flutter_gsg/task_managementt_app/views/widgets/task_widget.dart';
class CompleteTasksScreen extends StatefulWidget{
  @override
  State<CompleteTasksScreen> createState() => _CompleteTasksScreenState();
}

class _CompleteTasksScreenState extends State<CompleteTasksScreen> {
  checkTask(TaskModel taskModel){
    int index =tasks.indexOf(taskModel);
    tasks[index].isComplete=!tasks[index].isComplete;
    setState(() {

    });

  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.where((element) => element.isComplete).length,
        itemBuilder: (context,index){
          return TaskWidget(tasks.where((element) => element.isComplete).toList()[index],checkTask);

        });
  }
}