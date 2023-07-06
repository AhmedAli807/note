import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled11/controller/notes_bloc/notes_bloc.dart';
import 'package:untitled11/model/note_model.dart';
import 'package:untitled11/views/widgets/custom_app_bar.dart';
import 'package:untitled11/views/widgets/custom_text_field.dart';
import 'package:untitled11/views/widgets/edit_color_list.dart';
class EditViewBody extends StatefulWidget {
  const EditViewBody({Key? key, required this.note}) : super(key: key);
final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  @override
  Widget build(BuildContext context) {
     String ?title,content;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
          body:Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 24),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children:  [
                   Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16),
                    child: CustomAppBar(title: 'Edit',icon: Icons.check,onPressed: (){
                      widget.note.title=title??widget.note.title;
                      widget.note.subTitle=content??widget.note.subTitle;
                      widget.note.save();
                      BlocProvider.of<NotesBloc>(context).fetchAllNotes();
                      Navigator.pop(context);
                    },),
                  ),
                   CustomTextField(hint: widget.note.title,onChanged: (value){
                    title=value;
                  },),
                  SizedBox(
                    height: height*0.02,
                  ),
                   CustomTextField(hint: widget.note.subTitle,maxLine: 5,onChanged: (value){
                    content=value;
                  },),
                   SizedBox(
                     height: height*0.2,
                       child: EditColorList(note: widget.note,))
                ],
              ),
            ),
          )
    );
  }
}


