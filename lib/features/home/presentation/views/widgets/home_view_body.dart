import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/presentation/views/widgets/Home_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/item_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppbar(),
          HomeListView(),
          SizedBox(height: 30,),
          Text('Best Seller',style: Styles.titleMedium,),
        ],
      ),
    );
  }
}

