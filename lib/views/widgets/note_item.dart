import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
            color:const Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  const Text('Flutter Tips',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0,
                    bottom: 16),
                child: Text('Build your career with Ahmed Ali',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black.withOpacity(0.4)
                  ),),
              ),
              trailing:  IconButton(
                onPressed: (){},
                icon: const FaIcon(FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 30,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text('6 May 2023',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 16
                ),),
            )
          ],
        ),
      ),
    );
  }
}
