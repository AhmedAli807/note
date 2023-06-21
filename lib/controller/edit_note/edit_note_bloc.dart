import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'edit_note_event.dart';
part 'edit_note_state.dart';

class EditNoteBloc extends Bloc<EditNoteEvent, EditNoteState> {
  EditNoteBloc() : super(EditNoteInitial()) {
    on<EditNoteEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
