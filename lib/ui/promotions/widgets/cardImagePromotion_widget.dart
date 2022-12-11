
import 'package:flutter/material.dart';

class CardImagePromotion extends StatelessWidget {
  final bool isToDetail; 
  const CardImagePromotion({
    this.isToDetail = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(14.0),
          topLeft:  Radius.circular(5.0),
          topRight: Radius.circular(5.0),
          bottomRight:  Radius.circular(5.0)
        )
      ),
      child: Stack(
        children: [
         (!isToDetail)? Positioned(
          bottom: 0.0,
          left: 0.0,
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 15.0,
          ),
          ) : Container(),
          Image(
            image:AssetImage("assets/images/promo1.png"),
            fit: BoxFit.fitWidth,
          )
        ],
      ),
    );
  }
}
