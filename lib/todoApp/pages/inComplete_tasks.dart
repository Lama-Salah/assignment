import 'package:flutter/cupertino.dart';
import 'package:todoapp/todoApp/data/dummy_data.dart';
import 'package:todoapp/todoApp/widgets/task_item.dart';

// ignore: must_be_immutable
  class InCompleteTasksPage extends StatelessWidget {
 
  Function deleteFun;
  Function updateFun;
  InCompleteTasksPage(this.deleteFun, this.updateFun);
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Data.tasks.where((element) => !element.isComplete).isEmpty
        ? Center(
            child: Text('No Tasks Found'),
          )
        : ListView.builder(
            itemCount:
                Data.tasks.where((element) => !element.isComplete).length,
            itemBuilder: (context, index) {
              return TaskItem(
                Data.tasks
                    .where((element) => !element.isComplete)
                    .toList()[index],
                deleteFun: deleteFun,
                updateFun: updateFun,
              );
            });
  }
}
