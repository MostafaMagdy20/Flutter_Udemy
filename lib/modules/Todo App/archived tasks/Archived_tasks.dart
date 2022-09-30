import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course/shared/components/components.dart';
import 'package:flutter_course/shared/todo_cubit/cubit.dart';
import 'package:flutter_course/shared/todo_cubit/states.dart';


class ArchivedTasks extends StatefulWidget {
  const ArchivedTasks({Key? key}) : super(key: key);

  @override
  State<ArchivedTasks> createState() => _ArchivedTasksState();
}

class _ArchivedTasksState extends State<ArchivedTasks> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit , AppStates>(
      listener: (context , state) {},
      builder: (context , state)
      {
        var tasks = AppCubit.get(context).archivedTasks;

        return taskItem(tasks);

      },
    );
  }
}
