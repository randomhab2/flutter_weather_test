import 'package:flutter/material.dart';
import 'package:flutter_weather_test/src/constants/boxes.dart';
import 'package:flutter_weather_test/src/enums/task_category.dart';
import 'package:flutter_weather_test/src/features/weather/weather_bloc/weather_bloc.dart';
import 'package:flutter_weather_test/src/injection/injection.dart';
import 'package:flutter_weather_test/src/models/task.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_test/src/features/tasks/filters_bloc/filters_bloc.dart';
import 'package:flutter_weather_test/src/features/tasks/tasks_bloc/tasks_bloc.dart';
import 'package:flutter_weather_test/src/main_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  configureDependencies();

  // Initialize Hive
  await Hive.initFlutter();

  // Register the Task adapter
  Hive.registerAdapter(TaskAdapter());
  Hive.registerAdapter(TaskCategoryAdapter());

  // Open the Hive box
  tasksBox = await Hive.openBox<Task>('taskBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FiltersBloc(),
        ),
        BlocProvider<WeatherBloc>(
          create: (context) => getIt<WeatherBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BlocProvider(
          create: (context) => TasksBloc(
            BlocProvider.of<FiltersBloc>(context),
          )..add(const TasksEvent.fetchAllTasks()),
          child: const MainScreen(),
        ),
      ),
    );
  }
}
