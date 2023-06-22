
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:untitled11/constants.dart';
import 'package:untitled11/model/note_model.dart';

part 'add_note_event.dart';
part 'add_note_state.dart';

class AddNoteBloc extends Bloc<AddNoteEvent, AddNoteState> {
  AddNoteBloc() : super(AddNoteInitial()) {
    on<AddNoteEvent>((event, emit) {

      addNote(NoteModel note)async{
        emit(AddNoteLoading());
        try {
          var notesBox =  Hive.box<NoteModel>(kNotesBox);
          emit(AddNoteSuccess());
          await notesBox.add(note);
        }catch(e){
AddNoteFailure(errMessage: 'some thing went wrong');
        }
        @override
       void onTransition(Transition<AddNoteEvent,AddNoteState>transition){
          super.onTransition(transition);
          print(transition);
        }

      }
    });
  }
}
