import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled11/model/note_model.dart';
import 'package:untitled11/views/widgets/edit_body_view.dart';
import 'package:untitled11/views/widgets/trailing_icon.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.note
  });
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
          decoration: BoxDecoration(
              color: Color(note.color),
              borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:   Text(note.title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 26
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16.0,
                      bottom: 16),
                  child: Text(note.subTitle,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black.withOpacity(0.4)
                    ),),
                ),
                trailing:
                     Wrap(
                       spacing: 12,
                       children: [
                         TrailingIconButton(icon:Icons.edit,color:Colors.black,onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditViewBody()));
                         },),
                         TrailingIconButton(icon:FontAwesomeIcons.trash,color:Colors.black,onPressed: (){},),
                       ],
                     ),

                ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(note.date,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 16
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}


