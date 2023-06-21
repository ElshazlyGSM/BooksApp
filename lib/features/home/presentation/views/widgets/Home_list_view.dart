import 'package:bookly/features/home/presentation/views/widgets/item_list_view.dart';
import 'package:flutter/material.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: ItemListView(),
            );
          }),
    );
  }
}