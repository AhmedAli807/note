part of 'delete_note_bloc.dart';

@immutable
abstract class DeleteNoteState {}

class DeleteNoteInitial extends DeleteNoteState {}
class DeleteNoteLoading extends DeleteNoteState {}
class DeleteNoteSuccess extends DeleteNoteState {}
class DeleteNoteFailure extends DeleteNoteState {
  final String errMessage;

   DeleteNoteFailure({
    required this.errMessage,
  });
}
