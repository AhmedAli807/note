part of 'edit_note_bloc.dart';

@immutable
abstract class EditNoteState {}

class EditNoteInitial extends EditNoteState {}
class EditNoteLoading extends EditNoteState {}
class EditNoteSuccess extends EditNoteState {}
class EditNoteFailure extends EditNoteState {
  final String errMessage;

   EditNoteFailure({
    required this.errMessage,
  });
}
