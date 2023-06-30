part of 'notes_bloc.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}
class NotesLoading extends NotesState {}
class NotesSuccess extends NotesState {
  List<NoteModel>notes;

  NotesSuccess({
    required this.notes,
  });
}
class NotesFailure extends NotesState {
  final String errMsg;

   NotesFailure({
    required this.errMsg,
  });
}
