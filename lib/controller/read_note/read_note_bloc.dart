import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'read_note_event.dart';
part 'read_note_state.dart';

class ReadNoteBloc extends Bloc<ReadNoteEvent, ReadNoteState> {
  ReadNoteBloc() : super(ReadNoteInitial()) {
    on<ReadNoteEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
