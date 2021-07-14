import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/todoApp/pages/all_tasks.dart';
import 'package:todoapp/todoApp/pages/complete_tasks.dart';
import 'package:todoapp/todoApp/pages/inComplete_tasks.dart';


import 'data/dummy_data.dart';
import 'models/task_model.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  deleteTask(Task task) {
    Data.tasks.remove(task);
    setState(() {});
  }

  updateTask(Task task) {
    task.isComplete = !task.isComplete;
    int index = Data.tasks.indexOf(task);
    Data.tasks[index] = task;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              alignment: Alignment.center,
              icon: Icon(
                Icons.add_box_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: ()async {
        var newTask  =  await  Navigator.pushNamed((context), 'info');
                setState(() {});
              },
            )
          ],
          title: Text('TODO APP'),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('All Tasks'),
              ),
              Tab(
                child: Text('Complete Tasks'),
              ),
              Tab(
                child: Text('InComplete Tasks'),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          AllTasksPage(deleteTask, updateTask),
          CompleteTasksPage(deleteTask, updateTask),
          InCompleteTasksPage(deleteTask, updateTask)
        ]),
      ),
    );
  }
}
