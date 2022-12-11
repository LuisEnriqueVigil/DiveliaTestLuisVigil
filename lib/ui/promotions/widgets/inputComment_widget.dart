
import 'package:divelita_test/ui/common/styles/colors.dart';
import 'package:divelita_test/ui/common/styles/fontSize.dart';
import 'package:flutter/material.dart';
class InputComment extends StatelessWidget {
  final String hintText; 
  const InputComment({ 
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 46.0,
      decoration: BoxDecoration(
        color: colorInputTextField,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Center(
        child: Padding(
          padding:const EdgeInsets.all(10.0), 
          child: TextFormField(
           style: TextStyle(
            color: Colors.white
           ),
           onChanged: (value){

           },
           textAlign: TextAlign.start,
           autocorrect: false,
           keyboardType: TextInputType.number,
           cursorColor: Colors.white,
           decoration: InputDecoration.collapsed(
            focusColor: Colors.white ,
            hintText: this.hintText,
            hintStyle: TextStyle(
              color: colorText.withOpacity(0.6),
              fontSize: fontSize2
            ), 
            ),
          ),
        ),
      ),
    );
  }
}