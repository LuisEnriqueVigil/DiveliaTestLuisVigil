import 'package:divelita_test/ui/common/styles/colors.dart';
import 'package:divelita_test/ui/common/styles/fontSize.dart';
import 'package:divelita_test/ui/common/widgets/headLogo_widget.dart';
import 'package:divelita_test/ui/common/widgets/text_widget.dart';
import 'package:divelita_test/ui/promotions/pages/detailPromotions_page.dart';
import 'package:divelita_test/ui/promotions/widgets/promotionsCard_widget.dart';
import 'package:flutter/material.dart';

class PromotionsPage extends StatelessWidget {
  const PromotionsPage({ Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            HeadLogo(
              isDetail: false,
              sizeHieght: 165.0,
              sizeImage: 85.0,
            ),
            const SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:40.0),
              child: TextWidget(
              text: "Últimas promociones",
              textAlign: TextAlign.start,
              textColor: colorText,
              textSize: fontSize1,
              fontWeight: FontWeight.w600,
              ),
            ),
           Expanded(
             child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context,index){
                return InkWell(
                  splashColor:colorButton,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPromotionsPage(
                      description: "Hola soy Indra y te puedo ayudar a adquirir hasta un 69% de desctuento solo llego a los Plaza Vea de San Miguel y Breña",
                      pathImage: "assets/images/promo1.png",
                      title: "Lg TV - 69% de descuento",
                    )));
                  },
                  child: PromotionsCard()
                );
              }
            ),
           ), 
        ],
      )
    );
  }
}
