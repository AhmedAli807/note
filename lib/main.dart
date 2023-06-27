import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:untitled11/constants.dart';
import 'package:untitled11/controller/add_note/add_note_bloc.dart';
import 'package:untitled11/controller/simple_bloc_observer.dart';
import 'package:untitled11/model/note_model.dart';
import 'package:untitled11/views/notes_screen.dart';

void main()async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  Bloc.observer=SimpleBlocObserver();
    runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins'
      ),
      debugShowCheckedModeBanner: false,
      home: const NotesScreen()
    );
  }
}

