import 'package:flutter/material.dart';
class BoxStack extends StatelessWidget {
  const BoxStack({
    required this.imageUrl,
    this.marginRight = 0 ,
    super.key,
  });
 final String imageUrl ;
 final double marginRight;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: marginRight),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border:
          Border.all(color: Colors.white, width: 2.5),
          image:  DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover)),
    );
  }
}
