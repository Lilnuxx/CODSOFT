import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18, top: 18),
      child: Slidable(
        child: Slidable(
          endActionPane: ActionPane(
              motion: DrawerMotion(),
              children: [SlidableAction(
                onPressed: deleteFunction,
                icon: Icons.delete,
                backgroundColor: Colors.red,
                borderRadius: BorderRadius.circular(50)
              )]),
          child: Container(
            padding: EdgeInsetsDirectional.all(15),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 11, 11, 11),
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              children: [
                Checkbox(value: taskCompleted, onChanged: onChanged),
                Text(
                  taskName,
                  style: (TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      decoration: taskCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                      decorationThickness: 3,
                      decorationColor: Colors.yellow)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
