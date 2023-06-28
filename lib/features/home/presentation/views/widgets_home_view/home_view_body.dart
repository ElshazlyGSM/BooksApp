import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'Home_list_view.dart';
import 'best_seller_list_view.dart';
import 'custom_appbar.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomAppbar(),
                HomeListView(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SliverFillRemaining(
            child: BestSellerListView(),
          ),
        ],
      ),
    );
  }
}

