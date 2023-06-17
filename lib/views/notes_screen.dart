import 'package:flutter/material.dart';
import 'package:untitled11/views/widgets/notes_screen_body.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesScreenBody(),
    );
  }
}
