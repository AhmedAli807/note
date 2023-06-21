part of 'read_note_bloc.dart';

@immutable
abstract class ReadNoteState {}

class ReadNoteInitial extends ReadNoteState {}
class ReadNoteLoading extends ReadNoteState {}
class ReadNoteSuccess extends ReadNoteState {}
class ReadNoteFailure extends ReadNoteState {
  final String errMessage;

   ReadNoteFailure({
    required this.errMessage,
  });
}
