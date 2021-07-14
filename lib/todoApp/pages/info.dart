import 'package:flutter/material.dart';
import 'package:todoapp/todoApp/data/dummy_data.dart';

// ignore: must_be_immutable
class Info extends StatefulWidget {
  // static final String routeName = 'info';

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  bool checkBoxValue = false;
  var result;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'List of tasks',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Row(
                children: [
                  result = Text("Fasting"),
                  Checkbox(
                      value: checkBoxValue,
                      onChanged: (value) {
                        setState(() {
                          checkBoxValue = value;
                        });
                      }),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    Data.tasks.addAll(result);
                    Navigator.pop(context , "Done");
                  },
                  child: Text('Save'))
            ],
          ),
        ));
  }
}
