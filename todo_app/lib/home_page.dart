import 'package:flutter/material.dart';
import 'package:todo_app/utils/dialog_box.dart';
import 'package:todo_app/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  List todoList = [];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  // void empty_list(){
  //   if (todoList.length==0) {
  // Container(
  //   child:  Image(image: AssetImage("assets\task-concept-illustration.png"))
  // );
  //   }
  // }

  void saveNewTask() {
    setState(() {
      todoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return dialogBox(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: Navigator.of(context).pop,
          );
        });
  }

  void deleteTask(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 29, 28, 28),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 11, 11, 11),
          centerTitle: true,
          title: const Text(
            "To Do",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          child: Icon(Icons.add),
        ),
        body: todoList.isEmpty
            ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Image.asset("assets/task-concept-illustration.png",fit: BoxFit.cover,)),
              ],
            )
            : ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return TodoTile(
                    taskName: todoList[index][0],
                    taskCompleted: todoList[index][1],
                    onChanged: (value) => checkBoxChanged(value, index),
                    deleteFunction: (context) {
                      deleteTask(index);
                    },
                  );
                }));
  }
}
