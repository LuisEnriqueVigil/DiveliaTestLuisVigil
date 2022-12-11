
import 'package:divelita_test/ui/common/styles/colors.dart';
import 'package:divelita_test/ui/common/styles/fontSize.dart';
import 'package:divelita_test/ui/common/widgets/text_widget.dart';
import 'package:divelita_test/ui/promotions/widgets/cardImagePromotion_widget.dart';
import 'package:flutter/material.dart';

class PromotionsCard extends StatelessWidget {
  const PromotionsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 5.0),
        height: 220.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardImagePromotion(),
            const SizedBox(height: 10.0),
             TextWidget(
              text: "Lg TV - 69% de descuento",
              textAlign: TextAlign.start,
              textColor: colorText,
              textSize: fontSize2,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(height: 5.0),
            Container(
              width: 220.0,height: 36.0,
              child: TextWidget(
                text: "Hola soy Indra y te puedo ayudar a adquirir hasta un 69% de desctuento solo llego a los Plaza Vea de San Miguel y Breña",
                textAlign: TextAlign.start,
                textColor: colorText,
                textSize: fontSize3,
                fontWeight: FontWeight.w600,
                isOlverlay: true,
              ),
            )
          ],
        ),
      )
    );
  }
}
