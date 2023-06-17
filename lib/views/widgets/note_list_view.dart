import 'package:flutter/material.dart';
import 'package:untitled11/views/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child:ListView.builder(itemBuilder: ( context, index){
      return const Padding(
        padding:  EdgeInsets.symmetric(vertical: 8.0),
        child:  NoteItem(),
      );
    }) );
  }
}
