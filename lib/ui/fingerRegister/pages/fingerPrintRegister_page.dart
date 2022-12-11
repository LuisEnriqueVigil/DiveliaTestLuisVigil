import 'package:divelita_test/ui/common/styles/colors.dart';
import 'package:divelita_test/ui/common/styles/fontSize.dart';
import 'package:divelita_test/ui/common/widgets/headLogo_widget.dart';
import 'package:divelita_test/ui/common/widgets/text_widget.dart';
import 'package:divelita_test/ui/promotions/widgets/buttonFooterDetailPromotion_widget.dart';
import 'package:flutter/material.dart';

class FingerPrintRegisterPage extends StatelessWidget {
  const FingerPrintRegisterPage({Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: Stack(
        children: [
          Column(
            children: [
              HeadLogo(
                isDetail: true,
                sizeHieght: 150.0,
                sizeImage: 80.0,
                isRegisterPrint: true,
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.30),
              Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.fingerprint,
                      size: 60.0,
                    ),
                    const SizedBox(height: 10.0),
                    TextWidget(
                        text: "Ajusta tu huella",
                        textAlign: TextAlign.start,
                        textColor: colorText,
                        textSize: fontSize1,
                        fontWeight: FontWeight.w600,
                      ),
                  ],
                ),
              )
            ],
          ),
          ButtonFooterDetailPromotion(
            isFingerPrint: true,
          )
        ],
      ),
    );
  }
}