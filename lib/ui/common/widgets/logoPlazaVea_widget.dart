import 'package:flutter/material.dart';

class LogoPlazaVea extends StatelessWidget {
  final double height; 

  const LogoPlazaVea({
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: double.infinity,
      child: Center(
        child: Image(
          image: AssetImage(
            "assets/images/logo1.png"
          ),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}