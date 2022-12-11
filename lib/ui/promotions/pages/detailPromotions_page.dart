
import 'package:divelita_test/ui/common/styles/colors.dart';
import 'package:divelita_test/ui/common/styles/fontSize.dart';
import 'package:divelita_test/ui/common/widgets/headLogo_widget.dart';
import 'package:divelita_test/ui/common/widgets/text_widget.dart';
import 'package:divelita_test/ui/promotions/widgets/buttonFooterDetailPromotion_widget.dart';
import 'package:divelita_test/ui/promotions/widgets/cardComent_widget.dart';
import 'package:divelita_test/ui/promotions/widgets/cardImagePromotion_widget.dart';
import 'package:divelita_test/ui/promotions/widgets/circleAvatarName_widget.dart';
import 'package:divelita_test/ui/promotions/widgets/inputComment_widget.dart';
import 'package:flutter/material.dart';

class DetailPromotionsPage extends StatelessWidget {
  final String title; 
  final String description;
  final String pathImage; 

  const DetailPromotionsPage({ Key? key,
    required this.description,
    required this.pathImage,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HeadLogo(
                isDetail: true,
                sizeHieght: 120.0,
                sizeImage: 80.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:40.0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: this.title,
                          textAlign: TextAlign.start,
                          textColor: colorText,
                          textSize: fontSize2,
                          fontWeight: FontWeight.w600,
                        ),
                       const SizedBox(height: 10.0),
                       CardImagePromotion(
                       isToDetail: true,
                       ),
                       const SizedBox(height: 10.0),
                       CircleAvatarName(
                        name: "Indira Bobadilla",
                       ),
                       const SizedBox(height: 20.0),
                       TextWidget(
                         text: this.description,
                         textAlign: TextAlign.start,
                         textColor: colorText,
                         textSize: fontSize3,
                         fontWeight: FontWeight.w600,
                        ),
                       const SizedBox(height: 10.0),
                       TextWidget(
                         text:"Publicado a las 12:30 am",
                         textAlign: TextAlign.start,
                         textColor: colorText,
                         textSize: 10.0,
                         fontWeight: FontWeight.w600,
                        ),
                        const SizedBox(height: 30.0),
                        TextWidget(
                         text:"Comentarios",
                         textAlign: TextAlign.start,
                         textColor: colorText,
                         textSize: fontSize1,
                         fontWeight: FontWeight.w600,
                        ),
                        const SizedBox(height: 15.0),
                        Column(
                          children: [
                            ComentCardContainer(
                              nameUser: "Tom Holland",
                            ),
                            ComentCardContainer(
                              nameUser: "Tobey Maguirre",
                            ),
                          ],
                        ),
                        InputComment(
                          hintText: "Escribe un comentario..."
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ButtonFooterDetailPromotion()
        ],
      ),
    );
  }
}


