import 'package:divelita_test/ui/common/styles/colors.dart';
import 'package:divelita_test/ui/common/styles/fontSize.dart';
import 'package:divelita_test/ui/common/widgets/text_widget.dart';
import 'package:divelita_test/ui/fingerRegister/pages/fingerPrintRegister_page.dart';
import 'package:flutter/material.dart';

class ButtonSavePromotion extends StatelessWidget {
  const ButtonSavePromotion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> FingerPrintRegisterPage()));
        },
        child: Container(
          height: 40.0,width: double.infinity,
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: colorText1,
            borderRadius: BorderRadius.circular(40.0)
          ),
          child: Center(
            child: TextWidget(
              text: "Reservar",
              textAlign: TextAlign.start,
              textColor: Colors.white,
              textSize: fontSize2,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
