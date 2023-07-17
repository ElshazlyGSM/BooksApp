import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, required this.imageUr}) : super(key: key);
  final String imageUr;

  @override
  Widget build(BuildContext context) {
    //AspectRatio(aspectRatio: 3 / 2)
    // you can wrap the sizedBox with AspectRatio to resize image right
    return AspectRatio(
        aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:  DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageUr),
          ),
        ),
      ),
    );
  }
}
