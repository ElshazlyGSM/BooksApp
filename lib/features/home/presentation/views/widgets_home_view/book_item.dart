import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import 'custom_book_image.dart';

class BookItem extends StatelessWidget {
  const BookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
        children: [
          const SizedBox(
            height: 105,
            child: CustomBookImage(imageUr: 'https://imgv3.fotor.com/images/blog-richtext-image/part-blurry-image.jpg'),
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
      ),
    );
  }
}

