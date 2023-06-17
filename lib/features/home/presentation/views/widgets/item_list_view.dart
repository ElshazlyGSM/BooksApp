import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //AspectRatio(aspectRatio: 3 / 2)
    // you can wrap the sizedBox with AspectRatio to resize image right
    return SizedBox(
      width: MediaQuery.of(context).size.height *.23,
      height: MediaQuery.of(context).size.height *.35,
      child: Container(
        decoration:  BoxDecoration(
          color: Colors.cyanAccent,
          borderRadius: BorderRadius.circular(20),
          image:  const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}