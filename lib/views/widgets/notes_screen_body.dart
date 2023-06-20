import 'package:flutter/material.dart';
import 'package:untitled11/views/widgets/custom_app_bar.dart';
import 'package:untitled11/views/widgets/note_list_view.dart';

class NotesScreenBody extends StatelessWidget {
  const NotesScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16
      ),
      child: Column(
        children: const  [
            CustomAppBar(title: 'Notes App',icon: Icons.search,),
          NoteListView()
        ],
      ),
    );
  }
}


