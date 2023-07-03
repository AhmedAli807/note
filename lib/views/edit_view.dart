import 'package:flutter/material.dart';
import 'package:untitled11/views/widgets/edit_body_view.dart';
import '../model/note_model.dart';
class EditView extends StatelessWidget {
  const EditView({Key? key, required this.note}) : super(key: key);
   final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  EditViewBody(note: note,);
  }
}
