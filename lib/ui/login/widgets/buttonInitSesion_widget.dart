import 'package:divelita_test/ui/common/styles/colors.dart';
import 'package:divelita_test/ui/common/styles/fontSize.dart';
import 'package:divelita_test/ui/common/widgets/text_widget.dart';
import 'package:divelita_test/ui/promotions/pages/promotions_page.dart';
import 'package:flutter/material.dart';

class ButtonIniSesion extends StatelessWidget {
  const ButtonIniSesion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> PromotionsPage()));
      },
      child: Container(
        height: 40.0,width: double.infinity,
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: colorButton,
          borderRadius: BorderRadius.circular(40.0)
        ),
        child: Center(
          child: TextWidget(
            text: "Ingresar",
            textAlign: TextAlign.start,
            textColor: colorText1,
            textSize: fontSize2,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
