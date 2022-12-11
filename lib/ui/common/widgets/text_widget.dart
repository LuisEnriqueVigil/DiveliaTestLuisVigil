
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final double textSize; 
  final Color textColor; 
  final String text;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final bool ? isOlverlay ; 

  const TextWidget({
    required this.text,
    required this.textAlign,
    required this.textColor,
    required this.textSize,
    required this.fontWeight,
    this.isOlverlay = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        color: this.textColor,
        fontWeight: this.fontWeight,
        fontSize: this.textSize,
      ),
      textAlign: this.textAlign,
      overflow: (this.isOlverlay!) ? TextOverflow.ellipsis : TextOverflow.fade,
      maxLines:(this.isOlverlay!) ? 2:20,
    );
  }
}