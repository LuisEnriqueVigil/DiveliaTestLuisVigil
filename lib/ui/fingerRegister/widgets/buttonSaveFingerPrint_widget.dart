import 'package:divelita_test/ui/common/styles/colors.dart';
import 'package:divelita_test/ui/common/styles/fontSize.dart';
import 'package:divelita_test/ui/common/widgets/text_widget.dart';
import 'package:divelita_test/ui/promotions/pages/promotions_page.dart';
import 'package:flutter/material.dart';

class ButtonSaveFingerPrint extends StatelessWidget {
  const ButtonSaveFingerPrint({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> PromotionsPage()));
      },
      child: Container(
        height: 40.0,
        margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: colorText1,
          borderRadius: BorderRadius.circular(40.0)
        ),
        child: Center(
          child: TextWidget(
            text: "Guardar huella",
            textAlign: TextAlign.start,
            textColor: Colors.white,
            textSize: fontSize2,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
