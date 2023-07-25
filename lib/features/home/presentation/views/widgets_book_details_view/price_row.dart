import 'package:bookly/core/utils/url_launcher.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'price_button.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: PriceButton(
            text: 'Free',
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            textColor: Colors.black,
          ),
        ),
        Expanded(
          child: PriceButton(
            onPressed: () async {
             customUrlLauncher(context, bookModel.volumeInfo.canonicalVolumeLink);
            },
            text: getText(bookModel),
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
  String getText (BookModel bookModel){
    if(bookModel.volumeInfo.canonicalVolumeLink == null){
      return 'not available';
    } else {
      return 'preview';
    }
  }
}

