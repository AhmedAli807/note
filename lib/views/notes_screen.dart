import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled11/controller/notes_bloc/notes_bloc.dart';
import 'package:untitled11/views/widgets/custom_bottom_sheet.dart';
import 'package:untitled11/views/widgets/notes_screen_body.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesBloc(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          showModalBottomSheet(context: context, builder: (context) {
            return const CustomBottomSheet();
          },
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              )
          );
        },
          child: const Icon(Icons.add),),
        body: const NotesScreenBody(),
      ),
    );
  }
}
