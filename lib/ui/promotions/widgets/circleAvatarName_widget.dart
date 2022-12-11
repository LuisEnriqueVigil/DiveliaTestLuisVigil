
import 'package:divelita_test/ui/common/styles/colors.dart';
import 'package:divelita_test/ui/common/styles/fontSize.dart';
import 'package:divelita_test/ui/common/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CircleAvatarName extends StatelessWidget {
  final String name;
  const CircleAvatarName({
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 15.0,
        ),
        const SizedBox(width: 10.0),
        TextWidget(
         text: this.name,
         textAlign: TextAlign.start,
         textColor: colorText,
         textSize: fontSize2,
         fontWeight: FontWeight.w600,
        ),
      ],
     );
  }
}