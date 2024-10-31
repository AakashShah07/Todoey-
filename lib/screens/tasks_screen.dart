import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';
class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

          padding: EdgeInsets.only(top: 80, left: 30,right: 30, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  const [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                  child: Icon(Icons.list,size: 35,color: Colors.lightBlueAccent,)),
              SizedBox(height: 10,),
              Text(
                  "Todoey",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700
                ),
              ),
              Text(
                  "12 tasks",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

            ],
          ),
        ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  color: Colors.white
              ),
              child: TaskList(),
            ),
          )
    ]
      ),
    );
  }
}



