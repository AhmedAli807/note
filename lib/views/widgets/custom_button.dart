import 'package:flutter/material.dart';
import 'package:untitled11/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,this.onTap,this.isLoading=false}) : super(key: key);
  final void Function()? onTap;
  final bool isLoading;
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
            child:   Center(
              child: isLoading?SizedBox(
                height: height*0.02,
                width: width*0.03,
                child: const CircularProgressIndicator(
                  color: Colors.black,
                ),
              ):const Text('Add',
              style: TextStyle(fontSize: 20,
              color: Colors.black),),
            ),
          ),
        ),
      );
  }
}
