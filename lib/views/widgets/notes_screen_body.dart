import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled11/controller/notes_bloc/notes_bloc.dart';
import 'package:untitled11/views/widgets/custom_app_bar.dart';
import 'package:untitled11/views/widgets/note_list_view.dart';

class NotesScreenBody extends StatefulWidget {
  const NotesScreenBody({Key? key}) : super(key: key);

  @override
  State<NotesScreenBody> createState() => _NotesScreenBodyState();
}

class _NotesScreenBodyState extends State<NotesScreenBody> {
  @override
  void initState() {
    BlocProvider.of<NotesBloc>(context).fetchAllNotes();
    super.initState();
  }
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


