
import 'package:divelita_test/ui/common/styles/colors.dart';
import 'package:divelita_test/ui/common/styles/fontSize.dart';
import 'package:divelita_test/ui/common/widgets/logoPlazaVea_widget.dart';
import 'package:divelita_test/ui/common/widgets/text_widget.dart';
import 'package:divelita_test/ui/login/widgets/buttonInitSesion_widget.dart';
import 'package:divelita_test/ui/login/widgets/inputName_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: Stack (
        children: [
          Positioned(
            bottom: 0.0,
            left: 0.0,
            child: Image(
              image: AssetImage(
                "assets/images/log1.png"
              ) 
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80.0),
                LogoPlazaVea(
                  height: 80.0,
                ),
                const SizedBox(height: 20.0),
                Center(
                  child: TextWidget(
                    text: "Registrate para iniciar",
                    textAlign: TextAlign.start,
                    textColor: colorText1,
                    textSize: fontSize2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 40.0),
                TextWidget(
                  text: "Foto de perfil",
                  textAlign: TextAlign.start,
                  textColor: colorText,
                  textSize: fontSize2,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 10.0),
                Center(
                  child: Container(
                    height: 80.0, width: 80.0,
                    decoration: BoxDecoration(
                      color: colorInputTextField,
                      borderRadius: BorderRadius.circular(40.0)
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                ),
              const SizedBox(height: 30.0),
               TextWidget(
                  text: "Nombres",
                  textAlign: TextAlign.start,
                  textColor: colorText,
                  textSize: fontSize2,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 20.0),
                InputLogin(
                  hintText: "Rodrigo Chambe Lupaca",
                ),
                const SizedBox(height: 40.0),
                TextWidget(
                  text: "Apellidos",
                  textAlign: TextAlign.start,
                  textColor: colorText,
                  textSize: fontSize2,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 20.0),
                InputLogin(
                  hintText: "Rodrigo Chambe Lupaca",
                ),
               const SizedBox(height: 40.0),
               ButtonIniSesion(),
               Spacer()
              ],
            ),
          )
        ],
      ),
    );
  }
}


