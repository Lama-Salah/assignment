import 'package:flutter/cupertino.dart';

import 'package:todoapp/todoApp/data/add_data.dart';
import 'package:todoapp/todoApp/widgets/task_item.dart';


// ignore: must_be_immutable
class AddTask extends StatelessWidget{
  Function deleteFun;
  Function updateFun;
  AddTask(this.deleteFun,this.updateFun);

  @override
  Widget build(BuildContext context) {
     return ListView.builder(
       itemCount: AddData.addtasks.length,
       shrinkWrap: true,
        
       itemBuilder: (context,index){
         return TaskItem(
           AddData.addtasks[index],
         
        deleteFun:deleteFun,
        
        updateFun:updateFun);
     
       }
       );
  }

}