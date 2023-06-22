import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //AspectRatio(aspectRatio: 3 / 2)
    // you can wrap the sizedBox with AspectRatio to resize image right
    return AspectRatio(
        aspectRatio: 2.7 / 5,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
