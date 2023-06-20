import 'package:flutter/material.dart';

import '../components/task.dart';

class TaskInherited extends InheritedWidget {
   TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Tasks> taskList = [
   Tasks('Estudar Flutter','assets/images/imagem1.png',3),
   Tasks('Andar de Bike','assets/images/imagem2.png',2),
   Tasks('Ler','assets/images/imagem4.png',4),
   Tasks('Meditar','assets/images/imagem3.png', 5),
    Tasks('Jogar','assets/images/imagem5.png',1,),
  ];

  void newTask(String name, String photo, int difficulty){
    taskList.add(Tasks(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
