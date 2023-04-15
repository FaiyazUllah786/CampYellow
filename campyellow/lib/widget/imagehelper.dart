import 'package:flutter/material.dart';

class ImageHelper extends StatelessWidget {
  String image;

  ImageHelper({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size.width * 0.05),
          boxShadow: [
            BoxShadow(
              color: Colors.yellow.shade700,
              offset: Offset(20, 20),
              spreadRadius: 0,
            )
          ]),
      height: size.height * 0.15,
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.transparent,
          ),
        ),
        child: Image.asset(
          image,
          // "assets/images/image1.png",
          fit: BoxFit.cover,
          width: size.width * 0.30,
        ),
      ),
    );
  }
}
