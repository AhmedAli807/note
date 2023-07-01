import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled11/model/note_model.dart';
import 'package:untitled11/views/widgets/note_item.dart';

import '../../controller/notes_bloc/notes_bloc.dart';

class NoteListView extends StatefulWidget {
  const NoteListView({
    super.key,
  });

  @override
  State<NoteListView> createState() => _NoteListViewState();
}

class _NoteListViewState extends State<NoteListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesBloc, NotesState>(
      builder: (context, state) {
        List<NoteModel>notes=BlocProvider.of<NotesBloc>(context).notes!;
        return Expanded(child: ListView.builder(
          itemCount:notes.length,
            itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: NoteItem(
              note: notes[index]
            ),
          );
        }));
      },
    );
  }
}
