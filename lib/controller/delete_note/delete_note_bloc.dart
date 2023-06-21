import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'delete_note_event.dart';
part 'delete_note_state.dart';

class DeleteNoteBloc extends Bloc<DeleteNoteEvent, DeleteNoteState> {
  DeleteNoteBloc() : super(DeleteNoteInitial()) {
    on<DeleteNoteEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
