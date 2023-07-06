import 'package:flutter/cupertino.dart';

import '../../constants.dart';
import '../../model/note_model.dart';
import 'color_item.dart';

class EditColorList extends StatefulWidget {
  const  EditColorList({Key? key, required this.note}) : super(key: key);
final NoteModel note;
  @override
  State<EditColorList> createState() => _EditColorListState();
}

class _EditColorListState extends State<EditColorList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex=kListColors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:kListColors.length ,scrollDirection:Axis.horizontal,itemBuilder: (context,index){
      return  Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 6.0),
        child: GestureDetector(
            onTap: (){
              currentIndex=index;
              widget.note.color=kListColors[index].value;
              setState(() {

              });
            },
            child: ColorItem(color:kListColors[index],isActive: currentIndex==index)),
      );
    });
  }
}