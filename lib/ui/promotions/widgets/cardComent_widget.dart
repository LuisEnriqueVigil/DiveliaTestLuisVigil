import 'package:divelita_test/ui/common/styles/colors.dart';
import 'package:divelita_test/ui/common/styles/fontSize.dart';
import 'package:divelita_test/ui/common/widgets/text_widget.dart';
import 'package:divelita_test/ui/promotions/widgets/circleAvatarName_widget.dart';
import 'package:flutter/material.dart';

class ComentCardContainer extends StatelessWidget {
  final String nameUser; 
  const ComentCardContainer({
    required this.nameUser,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatarName(
            name: this.nameUser
          ),
          Padding(
            padding: const EdgeInsets.only(left:40.0),
            child: TextWidget(
             text:"Muchas gracias Indra, realmente me ayudaste con la compra de ese producto. Estoy muy feliz con la nueva tele para mi casa :3",
             textAlign: TextAlign.start,
             textColor: colorText,
             textSize: fontSize3,
             fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15.0),
        ],
      ),
    );
  }
}