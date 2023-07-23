import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'home_list_view.dart';
import 'best_seller_list_view.dart';
import 'custom_appbar.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            BestSellerListView()
          ],
        ),
      ),
    );
  }
}

