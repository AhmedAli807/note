import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constants.dart';
import '../../model/note_model.dart';

part 'notes_event.dart';
part 'notes_state.dart';

class NotesBloc extends Bloc<NotesEvent, NotesState> {
  NotesBloc() : super(NotesInitial());
  List<NoteModel>?notes;

  fetchAllNotes(){

      var notesBox =  Hive.box<NoteModel>(kNotesBox);
      notes=notesBox.values.toList();
emit(NotesSuccess());

  }
}
