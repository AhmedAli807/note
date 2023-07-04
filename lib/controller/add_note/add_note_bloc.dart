
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:untitled11/constants.dart';
import 'package:untitled11/model/note_model.dart';

part 'add_note_event.dart';
part 'add_note_state.dart';

class AddNoteBloc extends Bloc<AddNoteEvent, AddNoteState> {
  AddNoteBloc() : super(AddNoteInitial()) ;

     addNote(NoteModel note)async{
        emit(AddNoteLoading());
        try {
          var notesBox =  Hive.box<NoteModel>(kNotesBox);
          await notesBox.add(note);
          emit(AddNoteSuccess());
        }catch(e){
emit(AddNoteFailure(errMessage: 'some thing went wrong'));
        }

        }

      }



