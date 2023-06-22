import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/presentation/views/widgets/Home_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
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
          BestSellerItem(),
        ],
      ),
    );
  }
}

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 105,
          child: AspectRatio(
            aspectRatio: 2.7 / 4.5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child:  Text(
                  'The jungle Book',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'JK. Rowling',
                style: Styles.textStyle14,
              ),
              Row(children:  [
                Text(
                  '19.99 €',
                  style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                ),
               const Spacer(),
                const Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4F),),
                const SizedBox(
                  width: 6.3,
                ),
                const Text(
                  '4.8',
                  style: Styles.textStyle16,
                ),
                const SizedBox(
                  width: 9,
                ),
                 const Text(
                  '(3254)',
                  style: Styles.textStyle14,
                ),
              ],),
            ],
          ),
        ),
      ],
    );
  }
}
