import 'package:flutter/material.dart';
import 'package:tugas_todolist/paktikum04/to_do_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyList4(),
    );
  }
}



// class ToDoList extends StatefulWidget {
//   const ToDoList({super.key});

//   @override
//   State<ToDoList> createState() => _ToDoListState();
// }

// class _ToDoListState extends State<ToDoList> {
//   List<String> tasks = [];
//   TextEditingController taskController = TextEditingController();

//   // fungsi untuk menambah
//   void addTask(String task) {
//     setState(() {
//       tasks.add(task);
//       taskController.clear();
//     });
//   }

//   // fungsi untuk mengurangi
//   void delTask(int index) {
//     setState(() {
//       tasks.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text('Tugas To-Do List App')),
//       ),
//       body: Column(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               controller: taskController,
//               decoration: InputDecoration(labelText: 'Tambah Tugas'),
//             ),
//           ),


//           ElevatedButton(
//             onPressed: () {
//               if (taskController.text.isNotEmpty) {
//                 addTask(taskController.text);
//               }
//             },
//             child: Text('tambah'),
//           ),

          
//           Expanded(
//               child: ListView.builder(
//             itemCount: tasks.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(tasks[index]),
//                 trailing: IconButton(
//                   icon: Icon(Icons.delete),
//                   onPressed: () {
//                     delTask(index);
//                   },
//                 ),
//               );
//             },
//           ))
//         ],
//       ),
//     );
//   }
// }
