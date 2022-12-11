
import 'package:divelita_test/ui/common/styles/colors.dart';
import 'package:divelita_test/ui/common/styles/fontSize.dart';
import 'package:divelita_test/ui/common/widgets/logoPlazaVea_widget.dart';
import 'package:divelita_test/ui/common/widgets/text_widget.dart';
import 'package:divelita_test/ui/fingerRegister/pages/fingerPrintRegister_page.dart';
import 'package:flutter/material.dart';

class HeadLogo extends StatelessWidget {
  final bool isDetail; 
  final double sizeImage; 
  final double sizeHieght; 
  final bool isRegisterPrint; 
  const HeadLogo({
    Key? key,
    required this.isDetail,
    required this.sizeHieght,
    required this.sizeImage,
    this.isRegisterPrint = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.sizeHieght,width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0),)
      ),
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 30.0),
              LogoPlazaVea(
                height: this.sizeImage
              ),
              (!isDetail)?Center(
                child: TextWidget(
                  text: "TODAS LAS PROMOCIONES",
                  textAlign: TextAlign.start,
                  textColor: colorText1,
                  textSize: fontSize2,
                  fontWeight: FontWeight.w600,
                ),
              ) : (isRegisterPrint) ? 
               TextWidget(
                  text: "REGISTRA TU TOUCH ID",
                  textAlign: TextAlign.start,
                  textColor: colorText1,
                  textSize: fontSize2,
                  fontWeight: FontWeight.w600,
                )
              :Container(),
              const SizedBox(height: 10.0),
              (!isDetail)?Center(
                child: Container(
                  width: this.sizeImage,height: 2.0,
                  color: colorText1,
                ),
              ) :Container()
            ],
          ),
          (isDetail)? 
            Positioned(
              left: 20.0,
              top: 60.0,
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 20.0,
                ),
              )
            ) : Container(),
          (!isDetail)? 
            Positioned(
              right: 20.0,
              top: 60.0,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> FingerPrintRegisterPage()));
                },
                child: Icon(
                  Icons.fingerprint,
                  color: Colors.black,
                  size: 25.0,
                ),
              )
            ) : Container()
        ],
      ),
    );
  }
}