import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled11/controller/add_note/add_note_bloc.dart';
import 'package:untitled11/controller/notes_bloc/notes_bloc.dart';
import 'package:untitled11/views/widgets/form_bottom_sheet.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Padding(
      padding:  EdgeInsets.only(left: 16.0,
          top: 16,
          right: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
      child: BlocConsumer<AddNoteBloc, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesBloc>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: FormBottomSheet(height: height)));
        },
      ),
    );
  }
}


