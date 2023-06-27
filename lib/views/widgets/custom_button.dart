import 'package:flutter/material.dart';
import 'package:untitled11/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,this.onTap}) : super(key: key);
  final void Function()? onTap;
@override
  Widget build(BuildContext context) {
    var height =MediaQuery.of(context).size.height;
    var width =MediaQuery.of(context).size.width;
    return
       GestureDetector(
        onTap: onTap,
        child:  Center(
          child:  Container(
            height: height*0.08,
            width: width*0.9,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10)
            ),
            child:  const Center(
              child: Text('Add',
              style: TextStyle(fontSize: 20,
              color: Colors.black),),
            ),
          ),
        ),
      );
  }
}
