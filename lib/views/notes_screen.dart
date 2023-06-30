import 'package:flutter/material.dart';
import 'package:untitled11/views/widgets/custom_bottom_sheet.dart';
import 'package:untitled11/views/widgets/notes_screen_body.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton:FloatingActionButton(onPressed:(){
        showModalBottomSheet(context: context, builder:(context){
          return const CustomBottomSheet();
        } ,
            isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          )
        );
      } ,
      child:const Icon(Icons.add),) ,
      body: const NotesScreenBody(),
    );
  }
}
