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
  fetchAllNotes()async{
    try {
      var notesBox =  Hive.box<NoteModel>(kNotesBox);
      List<NoteModel>notes=notesBox.values.toList();

      emit(NotesSuccess(notes: notes));
    }catch(e){
      emit(NotesFailure(errMsg: e.toString()));
    }
  }
}
