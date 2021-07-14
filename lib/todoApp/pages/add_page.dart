import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/todoApp/data/add_data.dart';
import 'package:todoapp/todoApp/data/dummy_data.dart';
import 'package:todoapp/todoApp/models/task_model.dart';
import 'package:todoapp/todoApp/pages/add_task.dart';




class AdddPage extends StatefulWidget{
  @override
  _AdddPageState createState() => _AdddPageState();
}

class _AdddPageState extends State<AdddPage> {

  deleteTasks(Task task){
    AddData.addtasks.remove(task);
    setState(() {
      
    });
    
  }

  updateTasks(Task task){
    task.isComplete=!task.isComplete;
    int index= AddData.addtasks.indexOf(task);
    AddData.addtasks[index]=task;
    setState(() {
      
    });
 
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('ADD TASKS', style: TextStyle(fontSize: 20),),),

        body: SingleChildScrollView(
            
      child: Column(
        children: [
                AddTask(deleteTasks,updateTasks),

                SizedBox(
                  height: 10,
                  
                ),
                Center(
                  child: ElevatedButton(child: Text('Save'),
                  onPressed: (){
                    Data.tasks.addAll(AddData.addtasks);
 
                     Navigator.pop(context,'Done');
 
                  },)
                )
 
          ],
      ),
    )
    
          );
  }
}