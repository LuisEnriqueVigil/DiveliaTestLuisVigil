
import 'package:divelita_test/ui/common/styles/colors.dart';
import 'package:divelita_test/ui/common/styles/fontSize.dart';
import 'package:divelita_test/ui/common/widgets/text_widget.dart';
import 'package:divelita_test/ui/fingerRegister/widgets/buttonSaveFingerPrint_widget.dart';
import 'package:divelita_test/ui/promotions/widgets/buttonSavePromotion_widget.dart';
import 'package:flutter/material.dart';

class ButtonFooterDetailPromotion extends StatefulWidget {
  final bool isFingerPrint; 

  const ButtonFooterDetailPromotion({
    this.isFingerPrint = false,
    Key? key,
  }) : super(key: key);

  @override
  _ButtonFooterDetailPromotionState createState() => _ButtonFooterDetailPromotionState();
}

class _ButtonFooterDetailPromotionState extends State<ButtonFooterDetailPromotion> {
  bool isFavorite = false;
  int cantLikes = 16;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 65.0,
        decoration: BoxDecoration( 
          color: Color(0xffC4C4C4).withOpacity(0.20),
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0))
        ),
        child: (widget.isFingerPrint)? 
        
        ButtonSaveFingerPrint()
        
        :Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 40.0),
            Container(
              height: 30.0,width: 80.0,
              decoration: BoxDecoration(
                color: Color(0xffEAEAEA),
                borderRadius: BorderRadius.circular(40.0)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextWidget(
                   text:cantLikes.toString(),
                   textAlign: TextAlign.start,
                   textColor: colorText,
                   textSize: fontSize2,
                   fontWeight: FontWeight.w600,
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        
                      });
                      isFavorite = !isFavorite;
                      if(isFavorite == true){
                        cantLikes +=1; 
                      }else if(isFavorite == false){
                        cantLikes-=1;
                      }
                    }, 
                    child: Icon(
                      isFavorite?   Icons.favorite :Icons.favorite_border,
                      size: 18.0,
                      color: isFavorite ? Colors.red : Colors.black,
                    )
                  )
                ],
              ),
            ),
           const SizedBox(width: 20.0),
            ButtonSavePromotion(),
           const SizedBox(width: 40.0),
          ],
        ),
      ),
    );
  }
}
