import 'package:flutter/material.dart';
import 'custom_container.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, this.padding = 0});

  final double padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .35,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: const CustomContainer(),
          );
        },
      ),
    );
  }
}
